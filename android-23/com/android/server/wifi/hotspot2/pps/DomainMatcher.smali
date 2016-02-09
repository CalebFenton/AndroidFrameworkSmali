.class public Lcom/android/server/wifi/hotspot2/pps/DomainMatcher;
.super Ljava/lang/Object;
.source "DomainMatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/hotspot2/pps/DomainMatcher$Match;,
        Lcom/android/server/wifi/hotspot2/pps/DomainMatcher$Label;
    }
.end annotation


# static fields
.field private static final TestDomains:[Ljava/lang/String;


# instance fields
.field private final mRoot:Lcom/android/server/wifi/hotspot2/pps/DomainMatcher$Label;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    .line 121
    const/16 v0, 0xd

    #@2
    new-array v0, v0, [Ljava/lang/String;

    #@4
    .line 122
    const-string/jumbo v1, "garbage.apple.com"

    #@7
    const/4 v2, 0x0

    #@8
    aput-object v1, v0, v2

    #@a
    .line 123
    const-string/jumbo v1, "apple.com"

    #@d
    const/4 v2, 0x1

    #@e
    aput-object v1, v0, v2

    #@10
    .line 124
    const-string/jumbo v1, "com"

    #@13
    const/4 v2, 0x2

    #@14
    aput-object v1, v0, v2

    #@16
    .line 125
    const-string/jumbo v1, "jan.android.google.com."

    #@19
    const/4 v2, 0x3

    #@1a
    aput-object v1, v0, v2

    #@1c
    .line 126
    const-string/jumbo v1, "jan.android.google.com"

    #@1f
    const/4 v2, 0x4

    #@20
    aput-object v1, v0, v2

    #@22
    .line 127
    const-string/jumbo v1, "android.google.com"

    #@25
    const/4 v2, 0x5

    #@26
    aput-object v1, v0, v2

    #@28
    .line 128
    const-string/jumbo v1, "google.com"

    #@2b
    const/4 v2, 0x6

    #@2c
    aput-object v1, v0, v2

    #@2e
    .line 129
    const-string/jumbo v1, "jan.android.google.net."

    #@31
    const/4 v2, 0x7

    #@32
    aput-object v1, v0, v2

    #@34
    .line 130
    const-string/jumbo v1, "jan.android.google.net"

    #@37
    const/16 v2, 0x8

    #@39
    aput-object v1, v0, v2

    #@3b
    .line 131
    const-string/jumbo v1, "android.google.net"

    #@3e
    const/16 v2, 0x9

    #@40
    aput-object v1, v0, v2

    #@42
    .line 132
    const-string/jumbo v1, "google.net"

    #@45
    const/16 v2, 0xa

    #@47
    aput-object v1, v0, v2

    #@49
    .line 133
    const-string/jumbo v1, "net."

    #@4c
    const/16 v2, 0xb

    #@4e
    aput-object v1, v0, v2

    #@50
    .line 134
    const-string/jumbo v1, "."

    #@53
    const/16 v2, 0xc

    #@55
    aput-object v1, v0, v2

    #@57
    .line 121
    sput-object v0, Lcom/android/server/wifi/hotspot2/pps/DomainMatcher;->TestDomains:[Ljava/lang/String;

    #@59
    .line 15
    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 70
    .local p1, "primary":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "secondary":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 71
    new-instance v2, Lcom/android/server/wifi/hotspot2/pps/DomainMatcher$Label;

    #@5
    sget-object v3, Lcom/android/server/wifi/hotspot2/pps/DomainMatcher$Match;->None:Lcom/android/server/wifi/hotspot2/pps/DomainMatcher$Match;

    #@7
    const/4 v4, 0x0

    #@8
    invoke-direct {v2, v3, v4}, Lcom/android/server/wifi/hotspot2/pps/DomainMatcher$Label;-><init>(Lcom/android/server/wifi/hotspot2/pps/DomainMatcher$Match;Lcom/android/server/wifi/hotspot2/pps/DomainMatcher$Label;)V

    #@b
    iput-object v2, p0, Lcom/android/server/wifi/hotspot2/pps/DomainMatcher;->mRoot:Lcom/android/server/wifi/hotspot2/pps/DomainMatcher$Label;

    #@d
    .line 72
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@10
    move-result-object v1

    #@11
    .local v1, "secondaryLabel$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@14
    move-result v2

    #@15
    if-eqz v2, :cond_0

    #@17
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1a
    move-result-object v0

    #@1b
    check-cast v0, Ljava/util/List;

    #@1d
    .line 73
    .local v0, "secondaryLabel":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/android/server/wifi/hotspot2/pps/DomainMatcher;->mRoot:Lcom/android/server/wifi/hotspot2/pps/DomainMatcher$Label;

    #@1f
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@22
    move-result-object v3

    #@23
    sget-object v4, Lcom/android/server/wifi/hotspot2/pps/DomainMatcher$Match;->Secondary:Lcom/android/server/wifi/hotspot2/pps/DomainMatcher$Match;

    #@25
    invoke-static {v2, v3, v4}, Lcom/android/server/wifi/hotspot2/pps/DomainMatcher$Label;->-wrap1(Lcom/android/server/wifi/hotspot2/pps/DomainMatcher$Label;Ljava/util/Iterator;Lcom/android/server/wifi/hotspot2/pps/DomainMatcher$Match;)V

    #@28
    goto :goto_0

    #@29
    .line 76
    .end local v0    # "secondaryLabel":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    iget-object v2, p0, Lcom/android/server/wifi/hotspot2/pps/DomainMatcher;->mRoot:Lcom/android/server/wifi/hotspot2/pps/DomainMatcher$Label;

    #@2b
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@2e
    move-result-object v3

    #@2f
    sget-object v4, Lcom/android/server/wifi/hotspot2/pps/DomainMatcher$Match;->Primary:Lcom/android/server/wifi/hotspot2/pps/DomainMatcher$Match;

    #@31
    invoke-static {v2, v3, v4}, Lcom/android/server/wifi/hotspot2/pps/DomainMatcher$Label;->-wrap1(Lcom/android/server/wifi/hotspot2/pps/DomainMatcher$Label;Ljava/util/Iterator;Lcom/android/server/wifi/hotspot2/pps/DomainMatcher$Match;)V

    #@34
    .line 70
    return-void
.end method

.method public static arg2SubdomainOfArg1(Ljava/util/List;Ljava/util/List;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p1, "arg2":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v4, 0x0

    #@1
    .line 101
    invoke-interface {p1}, Ljava/util/List;->size()I

    #@4
    move-result v2

    #@5
    invoke-interface {p0}, Ljava/util/List;->size()I

    #@8
    move-result v3

    #@9
    if-ge v2, v3, :cond_0

    #@b
    .line 102
    return v4

    #@c
    .line 105
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@f
    move-result-object v0

    #@10
    .line 106
    .local v0, "l1":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@13
    move-result-object v1

    #@14
    .line 108
    .local v1, "l2":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@17
    move-result v2

    #@18
    if-eqz v2, :cond_2

    #@1a
    .line 109
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1d
    move-result-object v2

    #@1e
    check-cast v2, Ljava/lang/String;

    #@20
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@23
    move-result-object v3

    #@24
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@27
    move-result v2

    #@28
    if-nez v2, :cond_1

    #@2a
    .line 110
    return v4

    #@2b
    .line 113
    :cond_2
    const/4 v2, 0x1

    #@2c
    return v2
.end method

.method public static main([Ljava/lang/String;)V
    .locals 11
    .param p0, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 138
    new-instance v0, Lcom/android/server/wifi/hotspot2/pps/DomainMatcher;

    #@3
    const-string/jumbo v5, "android.google.com"

    #@6
    invoke-static {v5}, Lcom/android/server/wifi/hotspot2/Utils;->splitDomain(Ljava/lang/String;)Ljava/util/List;

    #@9
    move-result-object v5

    #@a
    .line 139
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    #@d
    move-result-object v6

    #@e
    .line 138
    invoke-direct {v0, v5, v6}, Lcom/android/server/wifi/hotspot2/pps/DomainMatcher;-><init>(Ljava/util/List;Ljava/util/List;)V

    #@11
    .line 140
    .local v0, "dm1":Lcom/android/server/wifi/hotspot2/pps/DomainMatcher;
    sget-object v6, Lcom/android/server/wifi/hotspot2/pps/DomainMatcher;->TestDomains:[Ljava/lang/String;

    #@13
    array-length v7, v6

    #@14
    move v5, v4

    #@15
    :goto_0
    if-ge v5, v7, :cond_0

    #@17
    aget-object v2, v6, v5

    #@19
    .line 141
    .local v2, "domain":Ljava/lang/String;
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@1b
    new-instance v9, Ljava/lang/StringBuilder;

    #@1d
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@20
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v9

    #@24
    const-string/jumbo v10, ": "

    #@27
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v9

    #@2b
    invoke-static {v2}, Lcom/android/server/wifi/hotspot2/Utils;->splitDomain(Ljava/lang/String;)Ljava/util/List;

    #@2e
    move-result-object v10

    #@2f
    invoke-virtual {v0, v10}, Lcom/android/server/wifi/hotspot2/pps/DomainMatcher;->isSubDomain(Ljava/util/List;)Lcom/android/server/wifi/hotspot2/pps/DomainMatcher$Match;

    #@32
    move-result-object v10

    #@33
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v9

    #@37
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3a
    move-result-object v9

    #@3b
    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@3e
    .line 140
    add-int/lit8 v5, v5, 0x1

    #@40
    goto :goto_0

    #@41
    .line 143
    .end local v2    # "domain":Ljava/lang/String;
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    #@43
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    #@46
    .line 144
    .local v3, "secondaries":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/String;>;>;"
    const-string/jumbo v5, "apple.com"

    #@49
    invoke-static {v5}, Lcom/android/server/wifi/hotspot2/Utils;->splitDomain(Ljava/lang/String;)Ljava/util/List;

    #@4c
    move-result-object v5

    #@4d
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@50
    .line 145
    const-string/jumbo v5, "net"

    #@53
    invoke-static {v5}, Lcom/android/server/wifi/hotspot2/Utils;->splitDomain(Ljava/lang/String;)Ljava/util/List;

    #@56
    move-result-object v5

    #@57
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@5a
    .line 146
    new-instance v1, Lcom/android/server/wifi/hotspot2/pps/DomainMatcher;

    #@5c
    const-string/jumbo v5, "android.google.com"

    #@5f
    invoke-static {v5}, Lcom/android/server/wifi/hotspot2/Utils;->splitDomain(Ljava/lang/String;)Ljava/util/List;

    #@62
    move-result-object v5

    #@63
    invoke-direct {v1, v5, v3}, Lcom/android/server/wifi/hotspot2/pps/DomainMatcher;-><init>(Ljava/util/List;Ljava/util/List;)V

    #@66
    .line 147
    .local v1, "dm2":Lcom/android/server/wifi/hotspot2/pps/DomainMatcher;
    sget-object v5, Lcom/android/server/wifi/hotspot2/pps/DomainMatcher;->TestDomains:[Ljava/lang/String;

    #@68
    array-length v6, v5

    #@69
    :goto_1
    if-ge v4, v6, :cond_1

    #@6b
    aget-object v2, v5, v4

    #@6d
    .line 148
    .restart local v2    # "domain":Ljava/lang/String;
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@6f
    new-instance v8, Ljava/lang/StringBuilder;

    #@71
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@74
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@77
    move-result-object v8

    #@78
    const-string/jumbo v9, ": "

    #@7b
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7e
    move-result-object v8

    #@7f
    invoke-static {v2}, Lcom/android/server/wifi/hotspot2/Utils;->splitDomain(Ljava/lang/String;)Ljava/util/List;

    #@82
    move-result-object v9

    #@83
    invoke-virtual {v1, v9}, Lcom/android/server/wifi/hotspot2/pps/DomainMatcher;->isSubDomain(Ljava/util/List;)Lcom/android/server/wifi/hotspot2/pps/DomainMatcher$Match;

    #@86
    move-result-object v9

    #@87
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@8a
    move-result-object v8

    #@8b
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8e
    move-result-object v8

    #@8f
    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@92
    .line 147
    add-int/lit8 v4, v4, 0x1

    #@94
    goto :goto_1

    #@95
    .line 137
    .end local v2    # "domain":Ljava/lang/String;
    :cond_1
    return-void
.end method


# virtual methods
.method public isSubDomain(Ljava/util/List;)Lcom/android/server/wifi/hotspot2/pps/DomainMatcher$Match;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/android/server/wifi/hotspot2/pps/DomainMatcher$Match;"
        }
    .end annotation

    #@0
    .prologue
    .line 88
    .local p1, "domain":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/pps/DomainMatcher;->mRoot:Lcom/android/server/wifi/hotspot2/pps/DomainMatcher$Label;

    #@2
    .line 89
    .local v0, "label":Lcom/android/server/wifi/hotspot2/pps/DomainMatcher$Label;
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@5
    move-result-object v2

    #@6
    .local v2, "labelString$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@9
    move-result v3

    #@a
    if-eqz v3, :cond_2

    #@c
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@f
    move-result-object v1

    #@10
    check-cast v1, Ljava/lang/String;

    #@12
    .line 90
    .local v1, "labelString":Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/server/wifi/hotspot2/pps/DomainMatcher$Label;->-wrap0(Lcom/android/server/wifi/hotspot2/pps/DomainMatcher$Label;Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/pps/DomainMatcher$Label;

    #@15
    move-result-object v0

    #@16
    .line 91
    if-nez v0, :cond_1

    #@18
    .line 92
    sget-object v3, Lcom/android/server/wifi/hotspot2/pps/DomainMatcher$Match;->None:Lcom/android/server/wifi/hotspot2/pps/DomainMatcher$Match;

    #@1a
    return-object v3

    #@1b
    .line 93
    :cond_1
    invoke-virtual {v0}, Lcom/android/server/wifi/hotspot2/pps/DomainMatcher$Label;->getMatch()Lcom/android/server/wifi/hotspot2/pps/DomainMatcher$Match;

    #@1e
    move-result-object v3

    #@1f
    sget-object v4, Lcom/android/server/wifi/hotspot2/pps/DomainMatcher$Match;->None:Lcom/android/server/wifi/hotspot2/pps/DomainMatcher$Match;

    #@21
    if-eq v3, v4, :cond_0

    #@23
    .line 94
    invoke-virtual {v0}, Lcom/android/server/wifi/hotspot2/pps/DomainMatcher$Label;->getMatch()Lcom/android/server/wifi/hotspot2/pps/DomainMatcher$Match;

    #@26
    move-result-object v3

    #@27
    return-object v3

    #@28
    .line 97
    .end local v1    # "labelString":Ljava/lang/String;
    :cond_2
    sget-object v3, Lcom/android/server/wifi/hotspot2/pps/DomainMatcher$Match;->None:Lcom/android/server/wifi/hotspot2/pps/DomainMatcher$Match;

    #@2a
    return-object v3
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "Domain matcher "

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/pps/DomainMatcher;->mRoot:Lcom/android/server/wifi/hotspot2/pps/DomainMatcher$Label;

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@15
    move-result-object v0

    #@16
    return-object v0
.end method
