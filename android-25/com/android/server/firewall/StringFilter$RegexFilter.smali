.class Lcom/android/server/firewall/StringFilter$RegexFilter;
.super Lcom/android/server/firewall/StringFilter;
.source "StringFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/firewall/StringFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RegexFilter"
.end annotation


# instance fields
.field private final mPattern:Ljava/util/regex/Pattern;


# direct methods
.method public constructor <init>(Lcom/android/server/firewall/StringFilter$ValueProvider;Ljava/lang/String;)V
    .locals 1
    .param p1, "valueProvider"    # Lcom/android/server/firewall/StringFilter$ValueProvider;
    .param p2, "attrValue"    # Ljava/lang/String;

    #@0
    .prologue
    .line 201
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0}, Lcom/android/server/firewall/StringFilter;-><init>(Lcom/android/server/firewall/StringFilter$ValueProvider;Lcom/android/server/firewall/StringFilter;)V

    #@4
    .line 202
    invoke-static {p2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    #@7
    move-result-object v0

    #@8
    iput-object v0, p0, Lcom/android/server/firewall/StringFilter$RegexFilter;->mPattern:Ljava/util/regex/Pattern;

    #@a
    .line 200
    return-void
.end method


# virtual methods
.method public matchesValue(Ljava/lang/String;)Z
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 207
    if-eqz p1, :cond_0

    #@2
    iget-object v0, p0, Lcom/android/server/firewall/StringFilter$RegexFilter;->mPattern:Ljava/util/regex/Pattern;

    #@4
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    #@7
    move-result-object v0

    #@8
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    #@b
    move-result v0

    #@c
    :goto_0
    return v0

    #@d
    :cond_0
    const/4 v0, 0x0

    #@e
    goto :goto_0
.end method
