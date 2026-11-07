.class public Lcom/android/ims/rcs/uce/eab/EabProvider$OptionsColumns;
.super Ljava/lang/Object;
.source "EabProvider.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/rcs/uce/eab/EabProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OptionsColumns"
.end annotation


# static fields
.field public static final blacklist EAB_COMMON_ID:Ljava/lang/String; = "eab_common_id"

.field public static final blacklist FEATURE_TAG:Ljava/lang/String; = "feature_tag"

.field public static final blacklist REQUEST_TIMESTAMP:Ljava/lang/String; = "options_request_timestamp"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 313
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
