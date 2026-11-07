.class public interface abstract Ldalvik/system/ZipPathValidator$Callback;
.super Ljava/lang/Object;
.source "ZipPathValidator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldalvik/system/ZipPathValidator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public whitelist test-api onZipEntryAccess(Ljava/lang/String;)V
    .registers 2
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/ZipException;
        }
    .end annotation

    .line 103
    return-void
.end method
