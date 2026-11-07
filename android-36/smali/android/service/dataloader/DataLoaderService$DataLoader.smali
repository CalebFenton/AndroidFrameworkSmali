.class public interface abstract Landroid/service/dataloader/DataLoaderService$DataLoader;
.super Ljava/lang/Object;
.source "DataLoaderService.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/dataloader/DataLoaderService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DataLoader"
.end annotation


# virtual methods
.method public abstract whitelist onCreate(Landroid/content/pm/DataLoaderParams;Landroid/service/dataloader/DataLoaderService$FileSystemConnector;)Z
.end method

.method public abstract whitelist onPrepareImage(Ljava/util/Collection;Ljava/util/Collection;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroid/content/pm/InstallationFile;",
            ">;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation
.end method
