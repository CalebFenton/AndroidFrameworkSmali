.class public final Landroid/hardware/hdmi/HdmiRecordSources$OwnSource;
.super Landroid/hardware/hdmi/HdmiRecordSources$RecordSource;
.source "HdmiRecordSources.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/hdmi/HdmiRecordSources;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OwnSource"
.end annotation


# static fields
.field private static final greylist-max-o EXTRA_DATA_SIZE:I


# direct methods
.method private constructor greylist-max-o <init>()V
    .registers 3

    .line 111
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/hardware/hdmi/HdmiRecordSources$RecordSource;-><init>(II)V

    .line 112
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/hardware/hdmi/HdmiRecordSources-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/hardware/hdmi/HdmiRecordSources$OwnSource;-><init>()V

    return-void
.end method


# virtual methods
.method greylist-max-o extraParamToByteArray([BI)I
    .registers 4
    .param p1, "data"    # [B
    .param p2, "index"    # I

    .line 116
    const/4 v0, 0x0

    return v0
.end method
