# Custom superset config for CTMR
SECRET_KEY = "replace_me"

# Custom metadata DB URI -- currently not used, here for future reference.
# SQLALCHEMY_DATABASE_URI = 'postgresql://root:password@hostname/applicationdb'

FEATURE_FLAGS = {
    "GENERIC_CHART_AXES": True,
}
