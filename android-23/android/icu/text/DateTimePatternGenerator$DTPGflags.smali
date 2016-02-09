.class final enum Landroid/icu/text/DateTimePatternGenerator$DTPGflags;
.super Ljava/lang/Enum;
.source "DateTimePatternGenerator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/DateTimePatternGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "DTPGflags"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/icu/text/DateTimePatternGenerator$DTPGflags;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/icu/text/DateTimePatternGenerator$DTPGflags;

.field public static final enum FIX_FRACTIONAL_SECONDS:Landroid/icu/text/DateTimePatternGenerator$DTPGflags;

.field public static final enum SKELETON_USES_CAP_J:Landroid/icu/text/DateTimePatternGenerator$DTPGflags;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 1739
    new-instance v0, Landroid/icu/text/DateTimePatternGenerator$DTPGflags;

    #@4
    const-string/jumbo v1, "FIX_FRACTIONAL_SECONDS"

    #@7
    invoke-direct {v0, v1, v2}, Landroid/icu/text/DateTimePatternGenerator$DTPGflags;-><init>(Ljava/lang/String;I)V

    #@a
    sput-object v0, Landroid/icu/text/DateTimePatternGenerator$DTPGflags;->FIX_FRACTIONAL_SECONDS:Landroid/icu/text/DateTimePatternGenerator$DTPGflags;

    #@c
    new-instance v0, Landroid/icu/text/DateTimePatternGenerator$DTPGflags;

    #@e
    const-string/jumbo v1, "SKELETON_USES_CAP_J"

    #@11
    invoke-direct {v0, v1, v3}, Landroid/icu/text/DateTimePatternGenerator$DTPGflags;-><init>(Ljava/lang/String;I)V

    #@14
    sput-object v0, Landroid/icu/text/DateTimePatternGenerator$DTPGflags;->SKELETON_USES_CAP_J:Landroid/icu/text/DateTimePatternGenerator$DTPGflags;

    #@16
    const/4 v0, 0x2

    #@17
    new-array v0, v0, [Landroid/icu/text/DateTimePatternGenerator$DTPGflags;

    #@19
    sget-object v1, Landroid/icu/text/DateTimePatternGenerator$DTPGflags;->FIX_FRACTIONAL_SECONDS:Landroid/icu/text/DateTimePatternGenerator$DTPGflags;

    #@1b
    aput-object v1, v0, v2

    #@1d
    sget-object v1, Landroid/icu/text/DateTimePatternGenerator$DTPGflags;->SKELETON_USES_CAP_J:Landroid/icu/text/DateTimePatternGenerator$DTPGflags;

    #@1f
    aput-object v1, v0, v3

    #@21
    sput-object v0, Landroid/icu/text/DateTimePatternGenerator$DTPGflags;->$VALUES:[Landroid/icu/text/DateTimePatternGenerator$DTPGflags;

    #@23
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    #@0
    .prologue
    .line 1739
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/icu/text/DateTimePatternGenerator$DTPGflags;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1739
    const-class v0, Landroid/icu/text/DateTimePatternGenerator$DTPGflags;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/icu/text/DateTimePatternGenerator$DTPGflags;

    #@8
    return-object v0
.end method

.method public static values()[Landroid/icu/text/DateTimePatternGenerator$DTPGflags;
    .locals 1

    #@0
    .prologue
    .line 1739
    sget-object v0, Landroid/icu/text/DateTimePatternGenerator$DTPGflags;->$VALUES:[Landroid/icu/text/DateTimePatternGenerator$DTPGflags;

    #@2
    return-object v0
.end method
