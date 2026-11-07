.class public final Landroid/icu/text/CollationKey$BoundMode;
.super Ljava/lang/Object;
.source "CollationKey.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/CollationKey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BoundMode"
.end annotation


# static fields
.field public static final greylist-max-o COUNT:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist test-api LOWER:I = 0x0

.field public static final whitelist test-api UPPER:I = 0x1

.field public static final whitelist test-api UPPER_LONG:I = 0x2


# direct methods
.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
