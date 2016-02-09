.class final Landroid/icu/util/MeasureUnit$2;
.super Ljava/lang/Object;
.source "MeasureUnit.java"

# interfaces
.implements Landroid/icu/util/MeasureUnit$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/util/MeasureUnit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 232
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public create(Ljava/lang/String;Ljava/lang/String;)Landroid/icu/util/MeasureUnit;
    .locals 1
    .param p1, "unusedType"    # Ljava/lang/String;
    .param p2, "subType"    # Ljava/lang/String;

    #@0
    .prologue
    .line 234
    new-instance v0, Landroid/icu/util/Currency;

    #@2
    invoke-direct {v0, p2}, Landroid/icu/util/Currency;-><init>(Ljava/lang/String;)V

    #@5
    return-object v0
.end method
