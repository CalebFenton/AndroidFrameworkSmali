.class Ljava/util/prefs/AbstractPreferences$1;
.super Ljava/lang/Object;
.source "AbstractPreferences.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/prefs/AbstractPreferences;->isUserNode()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljava/util/prefs/AbstractPreferences;


# direct methods
.method constructor <init>(Ljava/util/prefs/AbstractPreferences;)V
    .locals 0
    .param p1, "this$0"    # Ljava/util/prefs/AbstractPreferences;

    #@0
    .prologue
    .line 1023
    iput-object p1, p0, Ljava/util/prefs/AbstractPreferences$1;->this$0:Ljava/util/prefs/AbstractPreferences;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Boolean;
    .locals 2

    #@0
    .prologue
    .line 1025
    iget-object v0, p0, Ljava/util/prefs/AbstractPreferences$1;->this$0:Ljava/util/prefs/AbstractPreferences;

    #@2
    invoke-static {v0}, Ljava/util/prefs/AbstractPreferences;->-get1(Ljava/util/prefs/AbstractPreferences;)Ljava/util/prefs/AbstractPreferences;

    #@5
    move-result-object v0

    #@6
    invoke-static {}, Ljava/util/prefs/Preferences;->userRoot()Ljava/util/prefs/Preferences;

    #@9
    move-result-object v1

    #@a
    if-ne v0, v1, :cond_0

    #@c
    const/4 v0, 0x1

    #@d
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@10
    move-result-object v0

    #@11
    return-object v0

    #@12
    :cond_0
    const/4 v0, 0x0

    #@13
    goto :goto_0
.end method

.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 1024
    invoke-virtual {p0}, Ljava/util/prefs/AbstractPreferences$1;->run()Ljava/lang/Boolean;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
