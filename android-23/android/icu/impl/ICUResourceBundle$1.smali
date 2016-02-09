.class final Landroid/icu/impl/ICUResourceBundle$1;
.super Landroid/icu/impl/SoftCache;
.source "ICUResourceBundle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/ICUResourceBundle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/icu/impl/SoftCache",
        "<",
        "Ljava/lang/String;",
        "Landroid/icu/impl/ICUResourceBundle$AvailEntry;",
        "Ljava/lang/ClassLoader;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 790
    invoke-direct {p0}, Landroid/icu/impl/SoftCache;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method protected createInstance(Ljava/lang/String;Ljava/lang/ClassLoader;)Landroid/icu/impl/ICUResourceBundle$AvailEntry;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "loader"    # Ljava/lang/ClassLoader;

    #@0
    .prologue
    .line 792
    new-instance v0, Landroid/icu/impl/ICUResourceBundle$AvailEntry;

    #@2
    invoke-direct {v0, p1, p2}, Landroid/icu/impl/ICUResourceBundle$AvailEntry;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    #@5
    return-object v0
.end method

.method protected bridge synthetic createInstance(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "loader"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 791
    check-cast p1, Ljava/lang/String;

    #@2
    .end local p1    # "key":Ljava/lang/Object;
    check-cast p2, Ljava/lang/ClassLoader;

    #@4
    .end local p2    # "loader":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Landroid/icu/impl/ICUResourceBundle$1;->createInstance(Ljava/lang/String;Ljava/lang/ClassLoader;)Landroid/icu/impl/ICUResourceBundle$AvailEntry;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method
