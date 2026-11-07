.class public Landroid/view/translation/Helper;
.super Ljava/lang/Object;
.source "Helper.java"


# static fields
.field public static final blacklist ANIMATION_DURATION_MILLIS:I = 0xfa

.field public static blacklist sDebug:Z

.field public static blacklist sVerbose:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 23
    const/4 v0, 0x0

    sput-boolean v0, Landroid/view/translation/Helper;->sDebug:Z

    .line 24
    sput-boolean v0, Landroid/view/translation/Helper;->sVerbose:Z

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 3

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "contains static members only"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
