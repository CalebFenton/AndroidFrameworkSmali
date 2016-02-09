.class Ljava/util/prefs/AbstractPreferences$NodeAddEvent;
.super Ljava/util/prefs/NodeChangeEvent;
.source "AbstractPreferences.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/prefs/AbstractPreferences;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NodeAddEvent"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>(Ljava/util/prefs/Preferences;Ljava/util/prefs/Preferences;)V
    .locals 0
    .param p1, "p"    # Ljava/util/prefs/Preferences;
    .param p2, "c"    # Ljava/util/prefs/Preferences;

    #@0
    .prologue
    .line 892
    invoke-direct {p0, p1, p2}, Ljava/util/prefs/NodeChangeEvent;-><init>(Ljava/util/prefs/Preferences;Ljava/util/prefs/Preferences;)V

    #@3
    .line 891
    return-void
.end method
