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
.field public static final blacklist FAILED:I = 0x1

.field public static final blacklist SUCCESS:I = 0x0

.field public static final blacklist UNKNOWN:I = -0x1

.field public static final blacklist UNSUPPORTED_CAUSE_DISABLED:I = 0x4

.field public static final blacklist UNSUPPORTED_CAUSE_NONE:I = 0x2

.field public static final blacklist UNSUPPORTED_CAUSE_RAT:I = 0x3


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 741
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
