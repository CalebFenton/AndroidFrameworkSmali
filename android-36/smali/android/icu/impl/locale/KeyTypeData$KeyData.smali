.class Landroid/icu/impl/locale/KeyTypeData$KeyData;
.super Ljava/lang/Object;
.source "KeyTypeData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/locale/KeyTypeData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "KeyData"
.end annotation


# instance fields
.field blacklist bcpId:Ljava/lang/String;

.field blacklist legacyId:Ljava/lang/String;

.field blacklist specialTypes:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Landroid/icu/impl/locale/KeyTypeData$SpecialType;",
            ">;"
        }
    .end annotation
.end field

.field blacklist typeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/icu/impl/locale/KeyTypeData$Type;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/EnumSet;)V
    .registers 5
    .param p1, "legacyId"    # Ljava/lang/String;
    .param p2, "bcpId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/icu/impl/locale/KeyTypeData$Type;",
            ">;",
            "Ljava/util/EnumSet<",
            "Landroid/icu/impl/locale/KeyTypeData$SpecialType;",
            ">;)V"
        }
    .end annotation

    .line 117
    .local p3, "typeMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/icu/impl/locale/KeyTypeData$Type;>;"
    .local p4, "specialTypes":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Landroid/icu/impl/locale/KeyTypeData$SpecialType;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    iput-object p1, p0, Landroid/icu/impl/locale/KeyTypeData$KeyData;->legacyId:Ljava/lang/String;

    .line 119
    iput-object p2, p0, Landroid/icu/impl/locale/KeyTypeData$KeyData;->bcpId:Ljava/lang/String;

    .line 120
    iput-object p3, p0, Landroid/icu/impl/locale/KeyTypeData$KeyData;->typeMap:Ljava/util/Map;

    .line 121
    iput-object p4, p0, Landroid/icu/impl/locale/KeyTypeData$KeyData;->specialTypes:Ljava/util/EnumSet;

    .line 122
    return-void
.end method
