.class public final Landroid/ranging/raw/RawResponderRangingConfig$Builder;
.super Ljava/lang/Object;
.source "RawResponderRangingConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/ranging/raw/RawResponderRangingConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mRawRangingDevice:Landroid/ranging/raw/RawRangingDevice;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmRawRangingDevice(Landroid/ranging/raw/RawResponderRangingConfig$Builder;)Landroid/ranging/raw/RawRangingDevice;
    .registers 1

    iget-object p0, p0, Landroid/ranging/raw/RawResponderRangingConfig$Builder;->mRawRangingDevice:Landroid/ranging/raw/RawRangingDevice;

    return-object p0
.end method

.method public constructor whitelist <init>()V
    .registers 1

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/ranging/raw/RawResponderRangingConfig;
    .registers 3

    .line 113
    iget-object v0, p0, Landroid/ranging/raw/RawResponderRangingConfig$Builder;->mRawRangingDevice:Landroid/ranging/raw/RawRangingDevice;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    new-instance v0, Landroid/ranging/raw/RawResponderRangingConfig;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/ranging/raw/RawResponderRangingConfig;-><init>(Landroid/ranging/raw/RawResponderRangingConfig$Builder;Landroid/ranging/raw/RawResponderRangingConfig-IA;)V

    return-object v0
.end method

.method public whitelist setRawRangingDevice(Landroid/ranging/raw/RawRangingDevice;)Landroid/ranging/raw/RawResponderRangingConfig$Builder;
    .registers 2
    .param p1, "rangingDevice"    # Landroid/ranging/raw/RawRangingDevice;

    .line 101
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    iput-object p1, p0, Landroid/ranging/raw/RawResponderRangingConfig$Builder;->mRawRangingDevice:Landroid/ranging/raw/RawRangingDevice;

    .line 103
    return-object p0
.end method
