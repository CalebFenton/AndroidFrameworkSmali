.class Lcom/android/server/location/GpsStatusListenerHelper$4;
.super Ljava/lang/Object;
.source "GpsStatusListenerHelper.java"

# interfaces
.implements Lcom/android/server/location/GpsStatusListenerHelper$Operation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/location/GpsStatusListenerHelper;->onSvStatusChanged(I[I[F[F[FIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/GpsStatusListenerHelper;

.field final synthetic val$almanacMask:I

.field final synthetic val$azimuths:[F

.field final synthetic val$elevations:[F

.field final synthetic val$ephemerisMask:I

.field final synthetic val$prns:[I

.field final synthetic val$snrs:[F

.field final synthetic val$svCount:I

.field final synthetic val$usedInFixMask:I


# direct methods
.method constructor <init>(Lcom/android/server/location/GpsStatusListenerHelper;I[I[F[F[FIII)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/location/GpsStatusListenerHelper;
    .param p2, "val$svCount"    # I
    .param p3, "val$prns"    # [I
    .param p4, "val$snrs"    # [F
    .param p5, "val$elevations"    # [F
    .param p6, "val$azimuths"    # [F
    .param p7, "val$ephemerisMask"    # I
    .param p8, "val$almanacMask"    # I
    .param p9, "val$usedInFixMask"    # I

    #@0
    .prologue
    .line 84
    iput-object p1, p0, Lcom/android/server/location/GpsStatusListenerHelper$4;->this$0:Lcom/android/server/location/GpsStatusListenerHelper;

    #@2
    iput p2, p0, Lcom/android/server/location/GpsStatusListenerHelper$4;->val$svCount:I

    #@4
    iput-object p3, p0, Lcom/android/server/location/GpsStatusListenerHelper$4;->val$prns:[I

    #@6
    iput-object p4, p0, Lcom/android/server/location/GpsStatusListenerHelper$4;->val$snrs:[F

    #@8
    iput-object p5, p0, Lcom/android/server/location/GpsStatusListenerHelper$4;->val$elevations:[F

    #@a
    iput-object p6, p0, Lcom/android/server/location/GpsStatusListenerHelper$4;->val$azimuths:[F

    #@c
    iput p7, p0, Lcom/android/server/location/GpsStatusListenerHelper$4;->val$ephemerisMask:I

    #@e
    iput p8, p0, Lcom/android/server/location/GpsStatusListenerHelper$4;->val$almanacMask:I

    #@10
    iput p9, p0, Lcom/android/server/location/GpsStatusListenerHelper$4;->val$usedInFixMask:I

    #@12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@15
    return-void
.end method


# virtual methods
.method public execute(Landroid/location/IGpsStatusListener;)V
    .locals 9
    .param p1, "listener"    # Landroid/location/IGpsStatusListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 88
    iget v1, p0, Lcom/android/server/location/GpsStatusListenerHelper$4;->val$svCount:I

    #@2
    .line 89
    iget-object v2, p0, Lcom/android/server/location/GpsStatusListenerHelper$4;->val$prns:[I

    #@4
    .line 90
    iget-object v3, p0, Lcom/android/server/location/GpsStatusListenerHelper$4;->val$snrs:[F

    #@6
    .line 91
    iget-object v4, p0, Lcom/android/server/location/GpsStatusListenerHelper$4;->val$elevations:[F

    #@8
    .line 92
    iget-object v5, p0, Lcom/android/server/location/GpsStatusListenerHelper$4;->val$azimuths:[F

    #@a
    .line 93
    iget v6, p0, Lcom/android/server/location/GpsStatusListenerHelper$4;->val$ephemerisMask:I

    #@c
    .line 94
    iget v7, p0, Lcom/android/server/location/GpsStatusListenerHelper$4;->val$almanacMask:I

    #@e
    .line 95
    iget v8, p0, Lcom/android/server/location/GpsStatusListenerHelper$4;->val$usedInFixMask:I

    #@10
    move-object v0, p1

    #@11
    .line 87
    invoke-interface/range {v0 .. v8}, Landroid/location/IGpsStatusListener;->onSvStatusChanged(I[I[F[F[FIII)V

    #@14
    .line 86
    return-void
.end method

.method public bridge synthetic execute(Landroid/os/IInterface;)V
    .locals 0
    .param p1, "listener"    # Landroid/os/IInterface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 86
    check-cast p1, Landroid/location/IGpsStatusListener;

    #@2
    .end local p1    # "listener":Landroid/os/IInterface;
    invoke-virtual {p0, p1}, Lcom/android/server/location/GpsStatusListenerHelper$4;->execute(Landroid/location/IGpsStatusListener;)V

    #@5
    return-void
.end method
