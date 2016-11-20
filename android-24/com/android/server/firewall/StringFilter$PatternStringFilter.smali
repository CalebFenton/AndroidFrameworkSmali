.class Lcom/android/server/firewall/StringFilter$PatternStringFilter;
.super Lcom/android/server/firewall/StringFilter;
.source "StringFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/firewall/StringFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PatternStringFilter"
.end annotation


# instance fields
.field private final mPattern:Landroid/os/PatternMatcher;


# direct methods
.method public constructor <init>(Lcom/android/server/firewall/StringFilter$ValueProvider;Ljava/lang/String;)V
    .locals 2
    .param p1, "valueProvider"    # Lcom/android/server/firewall/StringFilter$ValueProvider;
    .param p2, "attrValue"    # Ljava/lang/String;

    #@0
    .prologue
    .line 187
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0}, Lcom/android/server/firewall/StringFilter;-><init>(Lcom/android/server/firewall/StringFilter$ValueProvider;Lcom/android/server/firewall/StringFilter;)V

    #@4
    .line 188
    new-instance v0, Landroid/os/PatternMatcher;

    #@6
    const/4 v1, 0x2

    #@7
    invoke-direct {v0, p2, v1}, Landroid/os/PatternMatcher;-><init>(Ljava/lang/String;I)V

    #@a
    iput-object v0, p0, Lcom/android/server/firewall/StringFilter$PatternStringFilter;->mPattern:Landroid/os/PatternMatcher;

    #@c
    .line 186
    return-void
.end method


# virtual methods
.method public matchesValue(Ljava/lang/String;)Z
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 193
    if-eqz p1, :cond_0

    #@2
    iget-object v0, p0, Lcom/android/server/firewall/StringFilter$PatternStringFilter;->mPattern:Landroid/os/PatternMatcher;

    #@4
    invoke-virtual {v0, p1}, Landroid/os/PatternMatcher;->match(Ljava/lang/String;)Z

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
