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
        "Ljava/security/PrivilegedAction<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$0:Ljava/util/prefs/AbstractPreferences;


# direct methods
.method constructor blacklist <init>(Ljava/util/prefs/AbstractPreferences;)V
    .registers 2
    .param p1, "this$0"    # Ljava/util/prefs/AbstractPreferences;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1032
    iput-object p1, p0, Ljava/util/prefs/AbstractPreferences$1;->this$0:Ljava/util/prefs/AbstractPreferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist run()Ljava/lang/Boolean;
    .registers 3

    .line 1034
    iget-object v0, p0, Ljava/util/prefs/AbstractPreferences$1;->this$0:Ljava/util/prefs/AbstractPreferences;

    invoke-static {v0}, Ljava/util/prefs/AbstractPreferences;->-$$Nest$fgetroot(Ljava/util/prefs/AbstractPreferences;)Ljava/util/prefs/AbstractPreferences;

    move-result-object v0

    invoke-static {}, Ljava/util/prefs/Preferences;->userRoot()Ljava/util/prefs/Preferences;

    move-result-object v1

    if-ne v0, v1, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api run()Ljava/lang/Object;
    .registers 2

    .line 1032
    invoke-virtual {p0}, Ljava/util/prefs/AbstractPreferences$1;->run()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
