.class public Lcom/android/ims/ImsConfig$OperationValuesConstants;
.super Ljava/lang/Object;
.source "ImsConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/ImsConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OperationValuesConstants"
.end annotation


# static fields
.field public static final blacklist VIDEO_QUALITY_HIGH:I = 0x1

.field public static final blacklist VIDEO_QUALITY_LOW:I = 0x0

.field public static final blacklist VIDEO_QUALITY_UNKNOWN:I = -0x1


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 753
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
