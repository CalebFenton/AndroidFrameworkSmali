.class public interface abstract Lsun/net/spi/nameservice/NameServiceDescriptor;
.super Ljava/lang/Object;
.source "NameServiceDescriptor.java"


# virtual methods
.method public abstract createNameService()Lsun/net/spi/nameservice/NameService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract getProviderName()Ljava/lang/String;
.end method

.method public abstract getType()Ljava/lang/String;
.end method
