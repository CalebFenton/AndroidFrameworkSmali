.class public final Landroid/ranging/RangingDevice$Builder;
.super Ljava/lang/Object;
.source "RangingDevice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/ranging/RangingDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mId:Ljava/util/UUID;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmId(Landroid/ranging/RangingDevice$Builder;)Ljava/util/UUID;
    .registers 1

    iget-object p0, p0, Landroid/ranging/RangingDevice$Builder;->mId:Ljava/util/UUID;

    return-object p0
.end method

.method public constructor whitelist <init>()V
    .registers 2

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p0, Landroid/ranging/RangingDevice$Builder;->mId:Ljava/util/UUID;

    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/ranging/RangingDevice;
    .registers 3

    .line 125
    new-instance v0, Landroid/ranging/RangingDevice;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/ranging/RangingDevice;-><init>(Landroid/ranging/RangingDevice$Builder;Landroid/ranging/RangingDevice-IA;)V

    return-object v0
.end method

.method public whitelist setUuid(Ljava/util/UUID;)Landroid/ranging/RangingDevice$Builder;
    .registers 2
    .param p1, "id"    # Ljava/util/UUID;

    .line 114
    iput-object p1, p0, Landroid/ranging/RangingDevice$Builder;->mId:Ljava/util/UUID;

    .line 115
    return-object p0
.end method
