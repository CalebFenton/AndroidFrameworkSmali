.class public Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore$PersistentStoreException;
.super Ljava/io/IOException;
.source "PersistentStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PersistentStoreException"
.end annotation


# instance fields
.field private final type:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "type"    # I

    #@0
    .prologue
    .line 155
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@3
    .line 156
    iput p2, p0, Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore$PersistentStoreException;->type:I

    #@5
    .line 157
    return-void
.end method


# virtual methods
.method public getType()I
    .locals 1

    #@0
    .prologue
    .line 164
    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore$PersistentStoreException;->type:I

    #@2
    return v0
.end method
