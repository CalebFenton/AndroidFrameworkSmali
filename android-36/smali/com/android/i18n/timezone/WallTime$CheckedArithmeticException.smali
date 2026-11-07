.class Lcom/android/i18n/timezone/WallTime$CheckedArithmeticException;
.super Ljava/lang/Exception;
.source "WallTime.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/i18n/timezone/WallTime;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CheckedArithmeticException"
.end annotation


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 682
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/i18n/timezone/WallTime-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/i18n/timezone/WallTime$CheckedArithmeticException;-><init>()V

    return-void
.end method
