.class public final Landroid/devicelock/DeviceId;
.super Ljava/lang/Object;
.source "DeviceId.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/devicelock/DeviceId$DeviceIdType;
    }
.end annotation


# static fields
.field public static final whitelist DEVICE_ID_TYPE_IMEI:I = 0x0

.field public static final whitelist DEVICE_ID_TYPE_MEID:I = 0x1


# instance fields
.field private final blacklist mId:Ljava/lang/String;

.field private final blacklist mType:I


# direct methods
.method constructor blacklist <init>(ILjava/lang/String;)V
    .registers 3
    .param p1, "type"    # I
    .param p2, "id"    # Ljava/lang/String;

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput p1, p0, Landroid/devicelock/DeviceId;->mType:I

    .line 48
    iput-object p2, p0, Landroid/devicelock/DeviceId;->mId:Ljava/lang/String;

    .line 49
    return-void
.end method


# virtual methods
.method public whitelist getId()Ljava/lang/String;
    .registers 2

    .line 56
    iget-object v0, p0, Landroid/devicelock/DeviceId;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getType()I
    .registers 2

    .line 52
    iget v0, p0, Landroid/devicelock/DeviceId;->mType:I

    return v0
.end method
