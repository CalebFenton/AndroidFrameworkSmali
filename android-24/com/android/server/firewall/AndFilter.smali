.class Lcom/android/server/firewall/AndFilter;
.super Lcom/android/server/firewall/FilterList;
.source "AndFilter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/firewall/AndFilter$1;
    }
.end annotation


# static fields
.field public static final FACTORY:Lcom/android/server/firewall/FilterFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 39
    new-instance v0, Lcom/android/server/firewall/AndFilter$1;

    #@2
    const-string/jumbo v1, "and"

    #@5
    invoke-direct {v0, v1}, Lcom/android/server/firewall/AndFilter$1;-><init>(Ljava/lang/String;)V

    #@8
    sput-object v0, Lcom/android/server/firewall/AndFilter;->FACTORY:Lcom/android/server/firewall/FilterFactory;

    #@a
    .line 26
    return-void
.end method

.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 26
    invoke-direct {p0}, Lcom/android/server/firewall/FilterList;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public matches(Lcom/android/server/firewall/IntentFirewall;Landroid/content/ComponentName;Landroid/content/Intent;IILjava/lang/String;I)Z
    .locals 9
    .param p1, "ifw"    # Lcom/android/server/firewall/IntentFirewall;
    .param p2, "resolvedComponent"    # Landroid/content/ComponentName;
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "callerUid"    # I
    .param p5, "callerPid"    # I
    .param p6, "resolvedType"    # Ljava/lang/String;
    .param p7, "receivingUid"    # I

    #@0
    .prologue
    .line 30
    const/4 v8, 0x0

    #@1
    .local v8, "i":I
    :goto_0
    iget-object v0, p0, Lcom/android/server/firewall/AndFilter;->children:Ljava/util/ArrayList;

    #@3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@6
    move-result v0

    #@7
    if-ge v8, v0, :cond_1

    #@9
    .line 31
    iget-object v0, p0, Lcom/android/server/firewall/AndFilter;->children:Ljava/util/ArrayList;

    #@b
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@e
    move-result-object v0

    #@f
    check-cast v0, Lcom/android/server/firewall/Filter;

    #@11
    move-object v1, p1

    #@12
    move-object v2, p2

    #@13
    move-object v3, p3

    #@14
    move v4, p4

    #@15
    move v5, p5

    #@16
    move-object v6, p6

    #@17
    move/from16 v7, p7

    #@19
    invoke-interface/range {v0 .. v7}, Lcom/android/server/firewall/Filter;->matches(Lcom/android/server/firewall/IntentFirewall;Landroid/content/ComponentName;Landroid/content/Intent;IILjava/lang/String;I)Z

    #@1c
    move-result v0

    #@1d
    if-nez v0, :cond_0

    #@1f
    .line 33
    const/4 v0, 0x0

    #@20
    return v0

    #@21
    .line 30
    :cond_0
    add-int/lit8 v8, v8, 0x1

    #@23
    goto :goto_0

    #@24
    .line 36
    :cond_1
    const/4 v0, 0x1

    #@25
    return v0
.end method
