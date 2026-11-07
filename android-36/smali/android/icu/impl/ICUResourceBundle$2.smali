.class Landroid/icu/impl/ICUResourceBundle$2;
.super Ljava/lang/Object;
.source "ICUResourceBundle.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/icu/impl/ICUResourceBundle;->addBundleBaseNamesFromClassLoader(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/util/Set;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic blacklist val$bn:Ljava/lang/String;

.field final synthetic blacklist val$names:Ljava/util/Set;

.field final synthetic blacklist val$root:Ljava/lang/ClassLoader;


# direct methods
.method constructor blacklist <init>(Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/util/Set;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 771
    iput-object p1, p0, Landroid/icu/impl/ICUResourceBundle$2;->val$root:Ljava/lang/ClassLoader;

    iput-object p2, p0, Landroid/icu/impl/ICUResourceBundle$2;->val$bn:Ljava/lang/String;

    iput-object p3, p0, Landroid/icu/impl/ICUResourceBundle$2;->val$names:Ljava/util/Set;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic whitelist test-api run()Ljava/lang/Object;
    .registers 2

    .line 771
    invoke-virtual {p0}, Landroid/icu/impl/ICUResourceBundle$2;->run()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public blacklist run()Ljava/lang/Void;
    .registers 9

    .line 777
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Landroid/icu/impl/ICUResourceBundle$2;->val$root:Ljava/lang/ClassLoader;

    iget-object v2, p0, Landroid/icu/impl/ICUResourceBundle$2;->val$bn:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/ClassLoader;->getResources(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v1

    .line 778
    .local v1, "urls":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/URL;>;"
    if-nez v1, :cond_c

    .line 779
    return-object v0

    .line 781
    :cond_c
    new-instance v2, Landroid/icu/impl/ICUResourceBundle$2$1;

    invoke-direct {v2, p0}, Landroid/icu/impl/ICUResourceBundle$2$1;-><init>(Landroid/icu/impl/ICUResourceBundle$2;)V

    .line 790
    .local v2, "v":Landroid/icu/impl/URLHandler$URLVisitor;
    :goto_11
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_4d

    .line 791
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/URL;

    .line 792
    .local v3, "url":Ljava/net/URL;
    invoke-static {v3}, Landroid/icu/impl/URLHandler;->get(Ljava/net/URL;)Landroid/icu/impl/URLHandler;

    move-result-object v4

    .line 793
    .local v4, "handler":Landroid/icu/impl/URLHandler;
    if-eqz v4, :cond_28

    .line 794
    const/4 v5, 0x0

    invoke-virtual {v4, v2, v5}, Landroid/icu/impl/URLHandler;->guide(Landroid/icu/impl/URLHandler$URLVisitor;Z)V

    goto :goto_4c

    .line 796
    :cond_28
    invoke-static {}, Landroid/icu/impl/ICUResourceBundle;->-$$Nest$sfgetDEBUG()Z

    move-result v5

    if-eqz v5, :cond_4c

    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handler for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is null"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_4c
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_4c} :catch_4e

    .line 798
    .end local v3    # "url":Ljava/net/URL;
    .end local v4    # "handler":Landroid/icu/impl/URLHandler;
    :cond_4c
    :goto_4c
    goto :goto_11

    .line 801
    .end local v1    # "urls":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/URL;>;"
    .end local v2    # "v":Landroid/icu/impl/URLHandler$URLVisitor;
    :cond_4d
    goto :goto_71

    .line 799
    :catch_4e
    move-exception v1

    .line 800
    .local v1, "e":Ljava/io/IOException;
    invoke-static {}, Landroid/icu/impl/ICUResourceBundle;->-$$Nest$sfgetDEBUG()Z

    move-result v2

    if-eqz v2, :cond_71

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ouch: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 802
    .end local v1    # "e":Ljava/io/IOException;
    :cond_71
    :goto_71
    return-object v0
.end method
