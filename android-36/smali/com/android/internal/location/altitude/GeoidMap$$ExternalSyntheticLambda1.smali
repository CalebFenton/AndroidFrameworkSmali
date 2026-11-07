.class public final synthetic Lcom/android/internal/location/altitude/GeoidMap$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/location/altitude/GeoidMap$TileFunction;


# instance fields
.field public final synthetic blacklist f$0:Landroid/util/LruCache;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/util/LruCache;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/location/altitude/GeoidMap$$ExternalSyntheticLambda1;->f$0:Landroid/util/LruCache;

    return-void
.end method


# virtual methods
.method public final blacklist getTile(J)Lcom/android/internal/location/altitude/nano/S2TileProto;
    .registers 4

    .line 0
    iget-object v0, p0, Lcom/android/internal/location/altitude/GeoidMap$$ExternalSyntheticLambda1;->f$0:Landroid/util/LruCache;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/location/altitude/nano/S2TileProto;

    return-object p1
.end method
