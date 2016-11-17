.class Ljava/util/prefs/AbstractPreferences$NodeRemovedEvent;
.super Ljava/util/prefs/NodeChangeEvent;
.source "AbstractPreferences.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/prefs/AbstractPreferences;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NodeRemovedEvent"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x793ab898a1470785L


# instance fields
.field final synthetic this$0:Ljava/util/prefs/AbstractPreferences;


# direct methods
.method constructor <init>(Ljava/util/prefs/AbstractPreferences;Ljava/util/prefs/Preferences;Ljava/util/prefs/Preferences;)V
    .locals 0
    .param p1, "this$0"    # Ljava/util/prefs/AbstractPreferences;
    .param p2, "parent"    # Ljava/util/prefs/Preferences;
    .param p3, "child"    # Ljava/util/prefs/Preferences;

    #@0
    .prologue
    .line 1426
    iput-object p1, p0, Ljava/util/prefs/AbstractPreferences$NodeRemovedEvent;->this$0:Ljava/util/prefs/AbstractPreferences;

    #@2
    .line 1427
    invoke-direct {p0, p2, p3}, Ljava/util/prefs/NodeChangeEvent;-><init>(Ljava/util/prefs/Preferences;Ljava/util/prefs/Preferences;)V

    #@5
    .line 1426
    return-void
.end method
