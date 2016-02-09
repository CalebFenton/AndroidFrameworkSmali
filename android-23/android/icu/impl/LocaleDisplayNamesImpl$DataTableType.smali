.class public final enum Landroid/icu/impl/LocaleDisplayNamesImpl$DataTableType;
.super Ljava/lang/Enum;
.source "LocaleDisplayNamesImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/LocaleDisplayNamesImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DataTableType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/icu/impl/LocaleDisplayNamesImpl$DataTableType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/icu/impl/LocaleDisplayNamesImpl$DataTableType;

.field public static final enum LANG:Landroid/icu/impl/LocaleDisplayNamesImpl$DataTableType;

.field public static final enum REGION:Landroid/icu/impl/LocaleDisplayNamesImpl$DataTableType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 626
    new-instance v0, Landroid/icu/impl/LocaleDisplayNamesImpl$DataTableType;

    #@4
    const-string/jumbo v1, "LANG"

    #@7
    invoke-direct {v0, v1, v2}, Landroid/icu/impl/LocaleDisplayNamesImpl$DataTableType;-><init>(Ljava/lang/String;I)V

    #@a
    sput-object v0, Landroid/icu/impl/LocaleDisplayNamesImpl$DataTableType;->LANG:Landroid/icu/impl/LocaleDisplayNamesImpl$DataTableType;

    #@c
    new-instance v0, Landroid/icu/impl/LocaleDisplayNamesImpl$DataTableType;

    #@e
    const-string/jumbo v1, "REGION"

    #@11
    invoke-direct {v0, v1, v3}, Landroid/icu/impl/LocaleDisplayNamesImpl$DataTableType;-><init>(Ljava/lang/String;I)V

    #@14
    sput-object v0, Landroid/icu/impl/LocaleDisplayNamesImpl$DataTableType;->REGION:Landroid/icu/impl/LocaleDisplayNamesImpl$DataTableType;

    #@16
    .line 625
    const/4 v0, 0x2

    #@17
    new-array v0, v0, [Landroid/icu/impl/LocaleDisplayNamesImpl$DataTableType;

    #@19
    sget-object v1, Landroid/icu/impl/LocaleDisplayNamesImpl$DataTableType;->LANG:Landroid/icu/impl/LocaleDisplayNamesImpl$DataTableType;

    #@1b
    aput-object v1, v0, v2

    #@1d
    sget-object v1, Landroid/icu/impl/LocaleDisplayNamesImpl$DataTableType;->REGION:Landroid/icu/impl/LocaleDisplayNamesImpl$DataTableType;

    #@1f
    aput-object v1, v0, v3

    #@21
    sput-object v0, Landroid/icu/impl/LocaleDisplayNamesImpl$DataTableType;->$VALUES:[Landroid/icu/impl/LocaleDisplayNamesImpl$DataTableType;

    #@23
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    #@0
    .prologue
    .line 625
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/icu/impl/LocaleDisplayNamesImpl$DataTableType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 625
    const-class v0, Landroid/icu/impl/LocaleDisplayNamesImpl$DataTableType;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/icu/impl/LocaleDisplayNamesImpl$DataTableType;

    #@8
    return-object v0
.end method

.method public static values()[Landroid/icu/impl/LocaleDisplayNamesImpl$DataTableType;
    .locals 1

    #@0
    .prologue
    .line 625
    sget-object v0, Landroid/icu/impl/LocaleDisplayNamesImpl$DataTableType;->$VALUES:[Landroid/icu/impl/LocaleDisplayNamesImpl$DataTableType;

    #@2
    return-object v0
.end method
