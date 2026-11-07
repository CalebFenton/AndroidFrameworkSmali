.class public interface abstract Landroid/updatabledriver/UpdatableDriverProto$DenylistOrBuilder;
.super Ljava/lang/Object;
.source "UpdatableDriverProto.java"

# interfaces
.implements Lcom/android/framework/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/updatabledriver/UpdatableDriverProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DenylistOrBuilder"
.end annotation


# virtual methods
.method public abstract blacklist getPackageNames(I)Ljava/lang/String;
.end method

.method public abstract blacklist getPackageNamesBytes(I)Lcom/android/framework/protobuf/ByteString;
.end method

.method public abstract blacklist getPackageNamesCount()I
.end method

.method public abstract blacklist getPackageNamesList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract blacklist getVersionCode()J
.end method

.method public abstract blacklist hasVersionCode()Z
.end method
