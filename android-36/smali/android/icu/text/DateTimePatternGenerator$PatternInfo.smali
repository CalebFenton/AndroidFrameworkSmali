.class public final Landroid/icu/text/DateTimePatternGenerator$PatternInfo;
.super Ljava/lang/Object;
.source "DateTimePatternGenerator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/DateTimePatternGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PatternInfo"
.end annotation


# static fields
.field public static final whitelist test-api BASE_CONFLICT:I = 0x1

.field public static final whitelist test-api CONFLICT:I = 0x2

.field public static final whitelist test-api OK:I


# instance fields
.field public whitelist test-api conflictingPattern:Ljava/lang/String;

.field public whitelist test-api status:I


# direct methods
.method public constructor whitelist test-api <init>()V
    .registers 1

    .line 811
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 812
    return-void
.end method
