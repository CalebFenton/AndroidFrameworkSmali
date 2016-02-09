.class public Landroid/support/v4/text/ICUCompat;
.super Ljava/lang/Object;
.source "ICUCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/text/ICUCompat$ICUCompatImpl;,
        Landroid/support/v4/text/ICUCompat$ICUCompatImplBase;,
        Landroid/support/v4/text/ICUCompat$ICUCompatImplIcs;,
        Landroid/support/v4/text/ICUCompat$ICUCompatImplLollipop;
    }
.end annotation


# static fields
.field private static final IMPL:Landroid/support/v4/text/ICUCompat$ICUCompatImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 53
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@2
    .line 54
    .local v0, "version":I
    const/16 v1, 0x15

    #@4
    if-lt v0, v1, :cond_0

    #@6
    .line 55
    new-instance v1, Landroid/support/v4/text/ICUCompat$ICUCompatImplLollipop;

    #@8
    invoke-direct {v1}, Landroid/support/v4/text/ICUCompat$ICUCompatImplLollipop;-><init>()V

    #@b
    sput-object v1, Landroid/support/v4/text/ICUCompat;->IMPL:Landroid/support/v4/text/ICUCompat$ICUCompatImpl;

    #@d
    .line 23
    :goto_0
    return-void

    #@e
    .line 56
    :cond_0
    const/16 v1, 0xe

    #@10
    if-lt v0, v1, :cond_1

    #@12
    .line 57
    new-instance v1, Landroid/support/v4/text/ICUCompat$ICUCompatImplIcs;

    #@14
    invoke-direct {v1}, Landroid/support/v4/text/ICUCompat$ICUCompatImplIcs;-><init>()V

    #@17
    sput-object v1, Landroid/support/v4/text/ICUCompat;->IMPL:Landroid/support/v4/text/ICUCompat$ICUCompatImpl;

    #@19
    goto :goto_0

    #@1a
    .line 59
    :cond_1
    new-instance v1, Landroid/support/v4/text/ICUCompat$ICUCompatImplBase;

    #@1c
    invoke-direct {v1}, Landroid/support/v4/text/ICUCompat$ICUCompatImplBase;-><init>()V

    #@1f
    sput-object v1, Landroid/support/v4/text/ICUCompat;->IMPL:Landroid/support/v4/text/ICUCompat$ICUCompatImpl;

    #@21
    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static maximizeAndGetScript(Ljava/util/Locale;)Ljava/lang/String;
    .locals 1
    .param p0, "locale"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 87
    sget-object v0, Landroid/support/v4/text/ICUCompat;->IMPL:Landroid/support/v4/text/ICUCompat$ICUCompatImpl;

    #@2
    invoke-interface {v0, p0}, Landroid/support/v4/text/ICUCompat$ICUCompatImpl;->maximizeAndGetScript(Ljava/util/Locale;)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method
