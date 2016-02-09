.class public abstract Landroid_maps_conflict_avoidance/com/google/common/io/BasePersistentStore;
.super Ljava/lang/Object;
.source "BasePersistentStore.java"

# interfaces
.implements Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;


# instance fields
.field private final preferenceStore:Landroid_maps_conflict_avoidance/com/google/common/io/PreferenceStore;


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 16
    new-instance v0, Landroid_maps_conflict_avoidance/com/google/common/io/PreferenceStore;

    #@5
    invoke-direct {v0, p0}, Landroid_maps_conflict_avoidance/com/google/common/io/PreferenceStore;-><init>(Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;)V

    #@8
    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/BasePersistentStore;->preferenceStore:Landroid_maps_conflict_avoidance/com/google/common/io/PreferenceStore;

    #@a
    .line 17
    return-void
.end method


# virtual methods
.method public readPreference(Ljava/lang/String;)[B
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 41
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/BasePersistentStore;->preferenceStore:Landroid_maps_conflict_avoidance/com/google/common/io/PreferenceStore;

    #@2
    invoke-virtual {v0, p1}, Landroid_maps_conflict_avoidance/com/google/common/io/PreferenceStore;->readPreference(Ljava/lang/String;)[B

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public savePreferences()V
    .locals 1

    #@0
    .prologue
    .line 58
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/BasePersistentStore;->preferenceStore:Landroid_maps_conflict_avoidance/com/google/common/io/PreferenceStore;

    #@2
    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/common/io/PreferenceStore;->savePreferences()V

    #@5
    .line 59
    return-void
.end method

.method public setPreference(Ljava/lang/String;[B)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "data"    # [B

    #@0
    .prologue
    .line 33
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/BasePersistentStore;->preferenceStore:Landroid_maps_conflict_avoidance/com/google/common/io/PreferenceStore;

    #@2
    invoke-virtual {v0, p1, p2}, Landroid_maps_conflict_avoidance/com/google/common/io/PreferenceStore;->setPreference(Ljava/lang/String;[B)Z

    #@5
    move-result v0

    #@6
    return v0
.end method
