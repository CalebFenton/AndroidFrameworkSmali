.class final Landroid/icu/impl/ICUResourceBundle$2;
.super Ljava/lang/Object;
.source "ICUResourceBundle.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/icu/impl/ICUResourceBundle;->addBundleBaseNamesFromClassLoader(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/util/Set;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$bn:Ljava/lang/String;

.field final synthetic val$names:Ljava/util/Set;

.field final synthetic val$root:Ljava/lang/ClassLoader;


# direct methods
.method constructor <init>(Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/util/Set;)V
    .locals 0
    .param p1, "val$root"    # Ljava/lang/ClassLoader;
    .param p2, "val$bn"    # Ljava/lang/String;

    #@0
    .prologue
    .line 611
    .local p3, "val$names":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iput-object p1, p0, Landroid/icu/impl/ICUResourceBundle$2;->val$root:Ljava/lang/ClassLoader;

    #@2
    iput-object p2, p0, Landroid/icu/impl/ICUResourceBundle$2;->val$bn:Ljava/lang/String;

    #@4
    iput-object p3, p0, Landroid/icu/impl/ICUResourceBundle$2;->val$names:Ljava/util/Set;

    #@6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@9
    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 612
    invoke-virtual {p0}, Landroid/icu/impl/ICUResourceBundle$2;->run()Ljava/lang/Void;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public run()Ljava/lang/Void;
    .locals 9

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 616
    :try_start_0
    iget-object v5, p0, Landroid/icu/impl/ICUResourceBundle$2;->val$root:Ljava/lang/ClassLoader;

    #@3
    iget-object v6, p0, Landroid/icu/impl/ICUResourceBundle$2;->val$bn:Ljava/lang/String;

    #@5
    invoke-virtual {v5, v6}, Ljava/lang/ClassLoader;->getResources(Ljava/lang/String;)Ljava/util/Enumeration;

    #@8
    move-result-object v3

    #@9
    .line 617
    .local v3, "urls":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/URL;>;"
    if-nez v3, :cond_0

    #@b
    .line 618
    return-object v8

    #@c
    .line 620
    :cond_0
    new-instance v4, Landroid/icu/impl/ICUResourceBundle$2$1;

    #@e
    iget-object v5, p0, Landroid/icu/impl/ICUResourceBundle$2;->val$names:Ljava/util/Set;

    #@10
    invoke-direct {v4, p0, v5}, Landroid/icu/impl/ICUResourceBundle$2$1;-><init>(Landroid/icu/impl/ICUResourceBundle$2;Ljava/util/Set;)V

    #@13
    .line 628
    .local v4, "v":Landroid/icu/impl/URLHandler$URLVisitor;
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    #@16
    move-result v5

    #@17
    if-eqz v5, :cond_2

    #@19
    .line 629
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@1c
    move-result-object v2

    #@1d
    check-cast v2, Ljava/net/URL;

    #@1f
    .line 630
    .local v2, "url":Ljava/net/URL;
    invoke-static {v2}, Landroid/icu/impl/URLHandler;->get(Ljava/net/URL;)Landroid/icu/impl/URLHandler;

    #@22
    move-result-object v1

    #@23
    .line 631
    .local v1, "handler":Landroid/icu/impl/URLHandler;
    if-eqz v1, :cond_3

    #@25
    .line 632
    const/4 v5, 0x0

    #@26
    invoke-virtual {v1, v4, v5}, Landroid/icu/impl/URLHandler;->guide(Landroid/icu/impl/URLHandler$URLVisitor;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@29
    goto :goto_0

    #@2a
    .line 637
    .end local v1    # "handler":Landroid/icu/impl/URLHandler;
    .end local v2    # "url":Ljava/net/URL;
    .end local v3    # "urls":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/URL;>;"
    .end local v4    # "v":Landroid/icu/impl/URLHandler$URLVisitor;
    :catch_0
    move-exception v0

    #@2b
    .line 638
    .local v0, "e":Ljava/io/IOException;
    invoke-static {}, Landroid/icu/impl/ICUResourceBundle;->-get0()Z

    #@2e
    move-result v5

    #@2f
    if-eqz v5, :cond_2

    #@31
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@33
    new-instance v6, Ljava/lang/StringBuilder;

    #@35
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@38
    const-string/jumbo v7, "ouch: "

    #@3b
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v6

    #@3f
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    #@42
    move-result-object v7

    #@43
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v6

    #@47
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4a
    move-result-object v6

    #@4b
    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@4e
    .line 640
    .end local v0    # "e":Ljava/io/IOException;
    :cond_2
    return-object v8

    #@4f
    .line 634
    .restart local v1    # "handler":Landroid/icu/impl/URLHandler;
    .restart local v2    # "url":Ljava/net/URL;
    .restart local v3    # "urls":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/URL;>;"
    .restart local v4    # "v":Landroid/icu/impl/URLHandler$URLVisitor;
    :cond_3
    :try_start_1
    invoke-static {}, Landroid/icu/impl/ICUResourceBundle;->-get0()Z

    #@52
    move-result v5

    #@53
    if-eqz v5, :cond_1

    #@55
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@57
    new-instance v6, Ljava/lang/StringBuilder;

    #@59
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@5c
    const-string/jumbo v7, "handler for "

    #@5f
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@62
    move-result-object v6

    #@63
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@66
    move-result-object v6

    #@67
    const-string/jumbo v7, " is null"

    #@6a
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6d
    move-result-object v6

    #@6e
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@71
    move-result-object v6

    #@72
    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    #@75
    goto :goto_0
.end method
