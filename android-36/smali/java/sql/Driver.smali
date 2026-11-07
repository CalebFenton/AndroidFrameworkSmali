.class public interface abstract Ljava/sql/Driver;
.super Ljava/lang/Object;
.source "Driver.java"


# virtual methods
.method public abstract whitelist test-api acceptsURL(Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public abstract whitelist test-api connect(Ljava/lang/String;Ljava/util/Properties;)Ljava/sql/Connection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public abstract whitelist test-api getMajorVersion()I
.end method

.method public abstract whitelist test-api getMinorVersion()I
.end method

.method public abstract whitelist test-api getPropertyInfo(Ljava/lang/String;Ljava/util/Properties;)[Ljava/sql/DriverPropertyInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public abstract whitelist test-api jdbcCompliant()Z
.end method
