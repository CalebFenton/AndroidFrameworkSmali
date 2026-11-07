.class public final Landroid/updatabledriver/UpdatableDriverProto;
.super Ljava/lang/Object;
.source "UpdatableDriverProto.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/updatabledriver/UpdatableDriverProto$Denylists;,
        Landroid/updatabledriver/UpdatableDriverProto$DenylistsOrBuilder;,
        Landroid/updatabledriver/UpdatableDriverProto$Denylist;,
        Landroid/updatabledriver/UpdatableDriverProto$DenylistOrBuilder;
    }
.end annotation


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 0

    .line 891
    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist registerAllExtensions(Lcom/android/framework/protobuf/ExtensionRegistryLite;)V
    .registers 1
    .param p0, "registry"    # Lcom/android/framework/protobuf/ExtensionRegistryLite;

    .line 10
    return-void
.end method
