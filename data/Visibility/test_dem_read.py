#%%
from pyrad.io.read_data_dem import read_geotiff_data
f = read_geotiff_data('swisstopo_DEM.tif')

#%%
def _proj4_str_to_dict(proj4str):
    # COnverts proj4 string to dict as can be used by part
    return dict(item.split("=") for item in proj4str.strip(' ').split("+")
                if len(item.split('=')) == 2)
    
from osgeo import gdal, osr
raster = gdal.Open('swisstopo_DEM.tif')
prj = raster.GetProjection()
try:
    srs = osr.SpatialReference(wkt=prj)
except RuntimeError:
    pass
projparams = _proj4_str_to_dict(srs.ExportToProj4())

