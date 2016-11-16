.class Lcom/android/server/firewall/StringFilter$StartsWithFilter;
.super Lcom/android/server/firewall/StringFilter;
.source "StringFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/firewall/StringFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StartsWithFilter"
.end annotation


# instance fields
.field private final mFilterValue:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/server/firewall/StringFilter$ValueProvider;Ljava/lang/String;)V
    .locals 1
    .param p1, "valueProvider"    # Lcom/android/server/firewall/StringFilter$ValueProvider;
    .param p2, "attrValue"    # Ljava/lang/String;

    #@0
    .prologue
    .line 173
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0}, Lcom/android/server/firewall/StringFilter;-><init>(Lcom/android/server/firewall/StringFilter$ValueProvider;Lcom/android/server/firewall/StringFilter;)V

    #@4
    .line 174
    iput-object p2, p0, Lcom/android/server/firewall/StringFilter$StartsWithFilter;->mFilterValue:Ljava/lang/String;

    #@6
    .line 172
    return-void
.end method


# virtual methods
.method public matchesValue(Ljava/lang/String;)Z
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 179
    if-eqz p1, :cond_0

    #@2
    iget-object v0, p0, Lcom/android/server/firewall/StringFilter$StartsWithFilter;->mFilterValue:Ljava/lang/String;

    #@4
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@7
    move-result v0

    #@8
    :goto_0
    return v0

    #@9
    :cond_0
    const/4 v0, 0x0

    #@a
    goto :goto_0
.end method
