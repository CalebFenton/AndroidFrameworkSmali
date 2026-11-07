.class public final Landroid/provider/CloudMediaProviderContract$MediaCollectionInfo;
.super Ljava/lang/Object;
.source "CloudMediaProviderContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/CloudMediaProviderContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MediaCollectionInfo"
.end annotation


# static fields
.field public static final whitelist ACCOUNT_CONFIGURATION_INTENT:Ljava/lang/String; = "account_configuration_intent"

.field public static final whitelist ACCOUNT_NAME:Ljava/lang/String; = "account_name"

.field public static final whitelist LAST_MEDIA_SYNC_GENERATION:Ljava/lang/String; = "last_media_sync_generation"

.field public static final whitelist MEDIA_COLLECTION_ID:Ljava/lang/String; = "media_collection_id"


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 668
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
