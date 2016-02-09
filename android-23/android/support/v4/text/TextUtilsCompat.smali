.class public Landroid/support/v4/text/TextUtilsCompat;
.super Ljava/lang/Object;
.source "TextUtilsCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/text/TextUtilsCompat$TextUtilsCompatImpl;,
        Landroid/support/v4/text/TextUtilsCompat$TextUtilsCompatJellybeanMr1Impl;
    }
.end annotation


# static fields
.field private static ARAB_SCRIPT_SUBTAG:Ljava/lang/String;

.field private static HEBR_SCRIPT_SUBTAG:Ljava/lang/String;

.field private static final IMPL:Landroid/support/v4/text/TextUtilsCompat$TextUtilsCompatImpl;

.field public static final ROOT:Ljava/util/Locale;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    #@0
    sget-object v0, Landroid/support/v4/text/TextUtilsCompat;->ARAB_SCRIPT_SUBTAG:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method static synthetic -get1()Ljava/lang/String;
    .locals 1

    #@0
    sget-object v0, Landroid/support/v4/text/TextUtilsCompat;->HEBR_SCRIPT_SUBTAG:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 114
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@3
    .line 115
    .local v0, "version":I
    const/16 v1, 0x11

    #@5
    if-lt v0, v1, :cond_0

    #@7
    .line 116
    new-instance v1, Landroid/support/v4/text/TextUtilsCompat$TextUtilsCompatJellybeanMr1Impl;

    #@9
    invoke-direct {v1, v2}, Landroid/support/v4/text/TextUtilsCompat$TextUtilsCompatJellybeanMr1Impl;-><init>(Landroid/support/v4/text/TextUtilsCompat$TextUtilsCompatJellybeanMr1Impl;)V

    #@c
    sput-object v1, Landroid/support/v4/text/TextUtilsCompat;->IMPL:Landroid/support/v4/text/TextUtilsCompat$TextUtilsCompatImpl;

    #@e
    .line 146
    :goto_0
    new-instance v1, Ljava/util/Locale;

    #@10
    const-string/jumbo v2, ""

    #@13
    const-string/jumbo v3, ""

    #@16
    invoke-direct {v1, v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@19
    sput-object v1, Landroid/support/v4/text/TextUtilsCompat;->ROOT:Ljava/util/Locale;

    #@1b
    .line 148
    const-string/jumbo v1, "Arab"

    #@1e
    sput-object v1, Landroid/support/v4/text/TextUtilsCompat;->ARAB_SCRIPT_SUBTAG:Ljava/lang/String;

    #@20
    .line 149
    const-string/jumbo v1, "Hebr"

    #@23
    sput-object v1, Landroid/support/v4/text/TextUtilsCompat;->HEBR_SCRIPT_SUBTAG:Ljava/lang/String;

    #@25
    .line 26
    return-void

    #@26
    .line 118
    :cond_0
    new-instance v1, Landroid/support/v4/text/TextUtilsCompat$TextUtilsCompatImpl;

    #@28
    invoke-direct {v1, v2}, Landroid/support/v4/text/TextUtilsCompat$TextUtilsCompatImpl;-><init>(Landroid/support/v4/text/TextUtilsCompat$TextUtilsCompatImpl;)V

    #@2b
    sput-object v1, Landroid/support/v4/text/TextUtilsCompat;->IMPL:Landroid/support/v4/text/TextUtilsCompat$TextUtilsCompatImpl;

    #@2d
    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static getLayoutDirectionFromLocale(Ljava/util/Locale;)I
    .locals 1
    .param p0, "locale"    # Ljava/util/Locale;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    #@0
    .prologue
    .line 143
    sget-object v0, Landroid/support/v4/text/TextUtilsCompat;->IMPL:Landroid/support/v4/text/TextUtilsCompat$TextUtilsCompatImpl;

    #@2
    invoke-virtual {v0, p0}, Landroid/support/v4/text/TextUtilsCompat$TextUtilsCompatImpl;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public static htmlEncode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "s"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    #@0
    .prologue
    .line 129
    sget-object v0, Landroid/support/v4/text/TextUtilsCompat;->IMPL:Landroid/support/v4/text/TextUtilsCompat$TextUtilsCompatImpl;

    #@2
    invoke-virtual {v0, p0}, Landroid/support/v4/text/TextUtilsCompat$TextUtilsCompatImpl;->htmlEncode(Ljava/lang/String;)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method
