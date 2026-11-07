.class Ljava/util/prefs/AbstractPreferences$NodeAddedEvent;
.super Ljava/util/prefs/NodeChangeEvent;
.source "AbstractPreferences.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/prefs/AbstractPreferences;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NodeAddedEvent"
.end annotation


# static fields
.field private static final whitelist serialVersionUID:J = -0x5d95edd843702890L


# instance fields
.field final synthetic blacklist this$0:Ljava/util/prefs/AbstractPreferences;


# direct methods
.method constructor blacklist <init>(Ljava/util/prefs/AbstractPreferences;Ljava/util/prefs/Preferences;Ljava/util/prefs/Preferences;)V
    .registers 4
    .param p2, "parent"    # Ljava/util/prefs/Preferences;
    .param p3, "child"    # Ljava/util/prefs/Preferences;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 1488
    iput-object p1, p0, Ljava/util/prefs/AbstractPreferences$NodeAddedEvent;->this$0:Ljava/util/prefs/AbstractPreferences;

    .line 1489
    invoke-direct {p0, p2, p3}, Ljava/util/prefs/NodeChangeEvent;-><init>(Ljava/util/prefs/Preferences;Ljava/util/prefs/Preferences;)V

    .line 1490
    return-void
.end method
