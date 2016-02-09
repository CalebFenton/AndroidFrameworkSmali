.class public final enum Landroid/icu/text/PluralRules$SampleType;
.super Ljava/lang/Enum;
.source "PluralRules.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/PluralRules;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SampleType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/icu/text/PluralRules$SampleType;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/icu/text/PluralRules$SampleType;

.field public static final enum DECIMAL:Landroid/icu/text/PluralRules$SampleType;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum INTEGER:Landroid/icu/text/PluralRules$SampleType;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 888
    new-instance v0, Landroid/icu/text/PluralRules$SampleType;

    #@4
    const-string/jumbo v1, "INTEGER"

    #@7
    invoke-direct {v0, v1, v2}, Landroid/icu/text/PluralRules$SampleType;-><init>(Ljava/lang/String;I)V

    #@a
    .line 893
    sput-object v0, Landroid/icu/text/PluralRules$SampleType;->INTEGER:Landroid/icu/text/PluralRules$SampleType;

    #@c
    .line 894
    new-instance v0, Landroid/icu/text/PluralRules$SampleType;

    #@e
    const-string/jumbo v1, "DECIMAL"

    #@11
    invoke-direct {v0, v1, v3}, Landroid/icu/text/PluralRules$SampleType;-><init>(Ljava/lang/String;I)V

    #@14
    .line 899
    sput-object v0, Landroid/icu/text/PluralRules$SampleType;->DECIMAL:Landroid/icu/text/PluralRules$SampleType;

    #@16
    .line 887
    const/4 v0, 0x2

    #@17
    new-array v0, v0, [Landroid/icu/text/PluralRules$SampleType;

    #@19
    sget-object v1, Landroid/icu/text/PluralRules$SampleType;->INTEGER:Landroid/icu/text/PluralRules$SampleType;

    #@1b
    aput-object v1, v0, v2

    #@1d
    sget-object v1, Landroid/icu/text/PluralRules$SampleType;->DECIMAL:Landroid/icu/text/PluralRules$SampleType;

    #@1f
    aput-object v1, v0, v3

    #@21
    sput-object v0, Landroid/icu/text/PluralRules$SampleType;->$VALUES:[Landroid/icu/text/PluralRules$SampleType;

    #@23
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    #@0
    .prologue
    .line 887
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/icu/text/PluralRules$SampleType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 887
    const-class v0, Landroid/icu/text/PluralRules$SampleType;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/icu/text/PluralRules$SampleType;

    #@8
    return-object v0
.end method

.method public static values()[Landroid/icu/text/PluralRules$SampleType;
    .locals 1

    #@0
    .prologue
    .line 887
    sget-object v0, Landroid/icu/text/PluralRules$SampleType;->$VALUES:[Landroid/icu/text/PluralRules$SampleType;

    #@2
    return-object v0
.end method
