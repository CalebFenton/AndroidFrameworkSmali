.class public final enum Landroid/icu/text/PluralRules$PluralType;
.super Ljava/lang/Enum;
.source "PluralRules.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/PluralRules;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PluralType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/icu/text/PluralRules$PluralType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/icu/text/PluralRules$PluralType;

.field public static final enum CARDINAL:Landroid/icu/text/PluralRules$PluralType;

.field public static final enum ORDINAL:Landroid/icu/text/PluralRules$PluralType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 339
    new-instance v0, Landroid/icu/text/PluralRules$PluralType;

    #@4
    const-string/jumbo v1, "CARDINAL"

    #@7
    invoke-direct {v0, v1, v2}, Landroid/icu/text/PluralRules$PluralType;-><init>(Ljava/lang/String;I)V

    #@a
    .line 343
    sput-object v0, Landroid/icu/text/PluralRules$PluralType;->CARDINAL:Landroid/icu/text/PluralRules$PluralType;

    #@c
    .line 344
    new-instance v0, Landroid/icu/text/PluralRules$PluralType;

    #@e
    const-string/jumbo v1, "ORDINAL"

    #@11
    invoke-direct {v0, v1, v3}, Landroid/icu/text/PluralRules$PluralType;-><init>(Ljava/lang/String;I)V

    #@14
    .line 348
    sput-object v0, Landroid/icu/text/PluralRules$PluralType;->ORDINAL:Landroid/icu/text/PluralRules$PluralType;

    #@16
    .line 338
    const/4 v0, 0x2

    #@17
    new-array v0, v0, [Landroid/icu/text/PluralRules$PluralType;

    #@19
    sget-object v1, Landroid/icu/text/PluralRules$PluralType;->CARDINAL:Landroid/icu/text/PluralRules$PluralType;

    #@1b
    aput-object v1, v0, v2

    #@1d
    sget-object v1, Landroid/icu/text/PluralRules$PluralType;->ORDINAL:Landroid/icu/text/PluralRules$PluralType;

    #@1f
    aput-object v1, v0, v3

    #@21
    sput-object v0, Landroid/icu/text/PluralRules$PluralType;->$VALUES:[Landroid/icu/text/PluralRules$PluralType;

    #@23
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    #@0
    .prologue
    .line 338
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/icu/text/PluralRules$PluralType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 338
    const-class v0, Landroid/icu/text/PluralRules$PluralType;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/icu/text/PluralRules$PluralType;

    #@8
    return-object v0
.end method

.method public static values()[Landroid/icu/text/PluralRules$PluralType;
    .locals 1

    #@0
    .prologue
    .line 338
    sget-object v0, Landroid/icu/text/PluralRules$PluralType;->$VALUES:[Landroid/icu/text/PluralRules$PluralType;

    #@2
    return-object v0
.end method
