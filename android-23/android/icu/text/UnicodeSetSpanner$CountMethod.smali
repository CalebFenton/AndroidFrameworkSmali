.class public final enum Landroid/icu/text/UnicodeSetSpanner$CountMethod;
.super Ljava/lang/Enum;
.source "UnicodeSetSpanner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/UnicodeSetSpanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CountMethod"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/icu/text/UnicodeSetSpanner$CountMethod;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/icu/text/UnicodeSetSpanner$CountMethod;

.field public static final enum MIN_ELEMENTS:Landroid/icu/text/UnicodeSetSpanner$CountMethod;

.field public static final enum WHOLE_SPAN:Landroid/icu/text/UnicodeSetSpanner$CountMethod;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 105
    new-instance v0, Landroid/icu/text/UnicodeSetSpanner$CountMethod;

    #@4
    const-string/jumbo v1, "WHOLE_SPAN"

    #@7
    invoke-direct {v0, v1, v2}, Landroid/icu/text/UnicodeSetSpanner$CountMethod;-><init>(Ljava/lang/String;I)V

    #@a
    .line 112
    sput-object v0, Landroid/icu/text/UnicodeSetSpanner$CountMethod;->WHOLE_SPAN:Landroid/icu/text/UnicodeSetSpanner$CountMethod;

    #@c
    .line 113
    new-instance v0, Landroid/icu/text/UnicodeSetSpanner$CountMethod;

    #@e
    const-string/jumbo v1, "MIN_ELEMENTS"

    #@11
    invoke-direct {v0, v1, v3}, Landroid/icu/text/UnicodeSetSpanner$CountMethod;-><init>(Ljava/lang/String;I)V

    #@14
    .line 127
    sput-object v0, Landroid/icu/text/UnicodeSetSpanner$CountMethod;->MIN_ELEMENTS:Landroid/icu/text/UnicodeSetSpanner$CountMethod;

    #@16
    .line 104
    const/4 v0, 0x2

    #@17
    new-array v0, v0, [Landroid/icu/text/UnicodeSetSpanner$CountMethod;

    #@19
    sget-object v1, Landroid/icu/text/UnicodeSetSpanner$CountMethod;->WHOLE_SPAN:Landroid/icu/text/UnicodeSetSpanner$CountMethod;

    #@1b
    aput-object v1, v0, v2

    #@1d
    sget-object v1, Landroid/icu/text/UnicodeSetSpanner$CountMethod;->MIN_ELEMENTS:Landroid/icu/text/UnicodeSetSpanner$CountMethod;

    #@1f
    aput-object v1, v0, v3

    #@21
    sput-object v0, Landroid/icu/text/UnicodeSetSpanner$CountMethod;->$VALUES:[Landroid/icu/text/UnicodeSetSpanner$CountMethod;

    #@23
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    #@0
    .prologue
    .line 104
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/icu/text/UnicodeSetSpanner$CountMethod;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 104
    const-class v0, Landroid/icu/text/UnicodeSetSpanner$CountMethod;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/icu/text/UnicodeSetSpanner$CountMethod;

    #@8
    return-object v0
.end method

.method public static values()[Landroid/icu/text/UnicodeSetSpanner$CountMethod;
    .locals 1

    #@0
    .prologue
    .line 104
    sget-object v0, Landroid/icu/text/UnicodeSetSpanner$CountMethod;->$VALUES:[Landroid/icu/text/UnicodeSetSpanner$CountMethod;

    #@2
    return-object v0
.end method
