.class Lcom/android/server/firewall/CategoryFilter;
.super Ljava/lang/Object;
.source "CategoryFilter.java"

# interfaces
.implements Lcom/android/server/firewall/Filter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/firewall/CategoryFilter$1;
    }
.end annotation


# static fields
.field private static final ATTR_NAME:Ljava/lang/String; = "name"

.field public static final FACTORY:Lcom/android/server/firewall/FilterFactory;


# instance fields
.field private final mCategoryName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 46
    new-instance v0, Lcom/android/server/firewall/CategoryFilter$1;

    #@2
    const-string/jumbo v1, "category"

    #@5
    invoke-direct {v0, v1}, Lcom/android/server/firewall/CategoryFilter$1;-><init>(Ljava/lang/String;)V

    #@8
    sput-object v0, Lcom/android/server/firewall/CategoryFilter;->FACTORY:Lcom/android/server/firewall/FilterFactory;

    #@a
    .line 27
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "categoryName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 33
    iput-object p1, p0, Lcom/android/server/firewall/CategoryFilter;->mCategoryName:Ljava/lang/String;

    #@5
    .line 32
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/android/server/firewall/CategoryFilter;)V
    .locals 0
    .param p1, "categoryName"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/firewall/CategoryFilter;-><init>(Ljava/lang/String;)V

    #@3
    return-void
.end method


# virtual methods
.method public matches(Lcom/android/server/firewall/IntentFirewall;Landroid/content/ComponentName;Landroid/content/Intent;IILjava/lang/String;I)Z
    .locals 2
    .param p1, "ifw"    # Lcom/android/server/firewall/IntentFirewall;
    .param p2, "resolvedComponent"    # Landroid/content/ComponentName;
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "callerUid"    # I
    .param p5, "callerPid"    # I
    .param p6, "resolvedType"    # Ljava/lang/String;
    .param p7, "receivingUid"    # I

    #@0
    .prologue
    .line 39
    invoke-virtual {p3}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    #@3
    move-result-object v0

    #@4
    .line 40
    .local v0, "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-nez v0, :cond_0

    #@6
    .line 41
    const/4 v1, 0x0

    #@7
    return v1

    #@8
    .line 43
    :cond_0
    iget-object v1, p0, Lcom/android/server/firewall/CategoryFilter;->mCategoryName:Ljava/lang/String;

    #@a
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@d
    move-result v1

    #@e
    return v1
.end method
