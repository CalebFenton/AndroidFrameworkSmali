.class public Lcom/android/ims/ImsConfig$OperationStatusConstants;
.super Ljava/lang/Object;
.source "ImsConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/ImsConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OperationStatusConstants"
.end annotation


# static fields
.field public static final FAILED:I = 0x1

.field public static final SUCCESS:I = 0x0

.field public static final UNKNOWN:I = -0x1

.field public static final UNSUPPORTED_CAUSE_DISABLED:I = 0x4

.field public static final UNSUPPORTED_CAUSE_NONE:I = 0x2

.field public static final UNSUPPORTED_CAUSE_RAT:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 239
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method
