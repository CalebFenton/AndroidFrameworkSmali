.class public interface abstract Lorg/apache/http/params/HttpParams;
.super Ljava/lang/Object;
.source "HttpParams.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# virtual methods
.method public abstract whitelist copy()Lorg/apache/http/params/HttpParams;
.end method

.method public abstract whitelist getBooleanParameter(Ljava/lang/String;Z)Z
.end method

.method public abstract whitelist getDoubleParameter(Ljava/lang/String;D)D
.end method

.method public abstract whitelist getIntParameter(Ljava/lang/String;I)I
.end method

.method public abstract whitelist getLongParameter(Ljava/lang/String;J)J
.end method

.method public abstract whitelist getParameter(Ljava/lang/String;)Ljava/lang/Object;
.end method

.method public abstract whitelist isParameterFalse(Ljava/lang/String;)Z
.end method

.method public abstract whitelist isParameterTrue(Ljava/lang/String;)Z
.end method

.method public abstract whitelist removeParameter(Ljava/lang/String;)Z
.end method

.method public abstract whitelist setBooleanParameter(Ljava/lang/String;Z)Lorg/apache/http/params/HttpParams;
.end method

.method public abstract whitelist setDoubleParameter(Ljava/lang/String;D)Lorg/apache/http/params/HttpParams;
.end method

.method public abstract whitelist setIntParameter(Ljava/lang/String;I)Lorg/apache/http/params/HttpParams;
.end method

.method public abstract whitelist setLongParameter(Ljava/lang/String;J)Lorg/apache/http/params/HttpParams;
.end method

.method public abstract whitelist setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;
.end method
