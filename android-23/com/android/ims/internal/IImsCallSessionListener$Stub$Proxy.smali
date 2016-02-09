.class Lcom/android/ims/internal/IImsCallSessionListener$Stub$Proxy;
.super Ljava/lang/Object;
.source "IImsCallSessionListener.java"

# interfaces
.implements Lcom/android/ims/internal/IImsCallSessionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/internal/IImsCallSessionListener$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "remote"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 501
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 503
    iput-object p1, p0, Lcom/android/ims/internal/IImsCallSessionListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@5
    .line 501
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    #@0
    .prologue
    .line 507
    iget-object v0, p0, Lcom/android/ims/internal/IImsCallSessionListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@2
    return-object v0
.end method

.method public callSessionConferenceExtendFailed(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsReasonInfo;)V
    .locals 5
    .param p1, "session"    # Lcom/android/ims/internal/IImsCallSession;
    .param p2, "reasonInfo"    # Lcom/android/ims/ImsReasonInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 899
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 900
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 902
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.ims.internal.IImsCallSessionListener"

    #@c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 903
    if-eqz p1, :cond_0

    #@11
    invoke-interface {p1}, Lcom/android/ims/internal/IImsCallSession;->asBinder()Landroid/os/IBinder;

    #@14
    move-result-object v2

    #@15
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@18
    .line 904
    if-eqz p2, :cond_1

    #@1a
    .line 905
    const/4 v2, 0x1

    #@1b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@1e
    .line 906
    const/4 v2, 0x0

    #@1f
    invoke-virtual {p2, v0, v2}, Lcom/android/ims/ImsReasonInfo;->writeToParcel(Landroid/os/Parcel;I)V

    #@22
    .line 911
    :goto_0
    iget-object v2, p0, Lcom/android/ims/internal/IImsCallSessionListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@24
    const/16 v3, 0x12

    #@26
    const/4 v4, 0x0

    #@27
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@2a
    .line 912
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2d
    .line 915
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 916
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@33
    .line 897
    return-void

    #@34
    .line 909
    :cond_1
    const/4 v2, 0x0

    #@35
    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@38
    goto :goto_0

    #@39
    .line 914
    :catchall_0
    move-exception v2

    #@3a
    .line 915
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@3d
    .line 916
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@40
    .line 914
    throw v2
.end method

.method public callSessionConferenceExtendReceived(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsCallProfile;)V
    .locals 5
    .param p1, "session"    # Lcom/android/ims/internal/IImsCallSession;
    .param p2, "newSession"    # Lcom/android/ims/internal/IImsCallSession;
    .param p3, "profile"    # Lcom/android/ims/ImsCallProfile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 921
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 922
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 924
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.ims.internal.IImsCallSessionListener"

    #@c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 925
    if-eqz p1, :cond_1

    #@11
    invoke-interface {p1}, Lcom/android/ims/internal/IImsCallSession;->asBinder()Landroid/os/IBinder;

    #@14
    move-result-object v3

    #@15
    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@18
    .line 926
    if-eqz p2, :cond_0

    #@1a
    invoke-interface {p2}, Lcom/android/ims/internal/IImsCallSession;->asBinder()Landroid/os/IBinder;

    #@1d
    move-result-object v2

    #@1e
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@21
    .line 927
    if-eqz p3, :cond_2

    #@23
    .line 928
    const/4 v2, 0x1

    #@24
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@27
    .line 929
    const/4 v2, 0x0

    #@28
    invoke-virtual {p3, v0, v2}, Lcom/android/ims/ImsCallProfile;->writeToParcel(Landroid/os/Parcel;I)V

    #@2b
    .line 934
    :goto_1
    iget-object v2, p0, Lcom/android/ims/internal/IImsCallSessionListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@2d
    const/16 v3, 0x13

    #@2f
    const/4 v4, 0x0

    #@30
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@33
    .line 935
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@36
    .line 938
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@39
    .line 939
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@3c
    .line 919
    return-void

    #@3d
    :cond_1
    move-object v3, v2

    #@3e
    .line 925
    goto :goto_0

    #@3f
    .line 932
    :cond_2
    const/4 v2, 0x0

    #@40
    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@43
    goto :goto_1

    #@44
    .line 937
    :catchall_0
    move-exception v2

    #@45
    .line 938
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@48
    .line 939
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@4b
    .line 937
    throw v2
.end method

.method public callSessionConferenceExtended(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsCallProfile;)V
    .locals 5
    .param p1, "session"    # Lcom/android/ims/internal/IImsCallSession;
    .param p2, "newSession"    # Lcom/android/ims/internal/IImsCallSession;
    .param p3, "profile"    # Lcom/android/ims/ImsCallProfile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 876
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 877
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 879
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.ims.internal.IImsCallSessionListener"

    #@c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 880
    if-eqz p1, :cond_1

    #@11
    invoke-interface {p1}, Lcom/android/ims/internal/IImsCallSession;->asBinder()Landroid/os/IBinder;

    #@14
    move-result-object v3

    #@15
    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@18
    .line 881
    if-eqz p2, :cond_0

    #@1a
    invoke-interface {p2}, Lcom/android/ims/internal/IImsCallSession;->asBinder()Landroid/os/IBinder;

    #@1d
    move-result-object v2

    #@1e
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@21
    .line 882
    if-eqz p3, :cond_2

    #@23
    .line 883
    const/4 v2, 0x1

    #@24
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@27
    .line 884
    const/4 v2, 0x0

    #@28
    invoke-virtual {p3, v0, v2}, Lcom/android/ims/ImsCallProfile;->writeToParcel(Landroid/os/Parcel;I)V

    #@2b
    .line 889
    :goto_1
    iget-object v2, p0, Lcom/android/ims/internal/IImsCallSessionListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@2d
    const/16 v3, 0x11

    #@2f
    const/4 v4, 0x0

    #@30
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@33
    .line 890
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@36
    .line 893
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@39
    .line 894
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@3c
    .line 874
    return-void

    #@3d
    :cond_1
    move-object v3, v2

    #@3e
    .line 880
    goto :goto_0

    #@3f
    .line 887
    :cond_2
    const/4 v2, 0x0

    #@40
    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@43
    goto :goto_1

    #@44
    .line 892
    :catchall_0
    move-exception v2

    #@45
    .line 893
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@48
    .line 894
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@4b
    .line 892
    throw v2
.end method

.method public callSessionConferenceStateUpdated(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsConferenceState;)V
    .locals 5
    .param p1, "session"    # Lcom/android/ims/internal/IImsCallSession;
    .param p2, "state"    # Lcom/android/ims/ImsConferenceState;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1024
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 1025
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 1027
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.ims.internal.IImsCallSessionListener"

    #@c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 1028
    if-eqz p1, :cond_0

    #@11
    invoke-interface {p1}, Lcom/android/ims/internal/IImsCallSession;->asBinder()Landroid/os/IBinder;

    #@14
    move-result-object v2

    #@15
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@18
    .line 1029
    if-eqz p2, :cond_1

    #@1a
    .line 1030
    const/4 v2, 0x1

    #@1b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@1e
    .line 1031
    const/4 v2, 0x0

    #@1f
    invoke-virtual {p2, v0, v2}, Lcom/android/ims/ImsConferenceState;->writeToParcel(Landroid/os/Parcel;I)V

    #@22
    .line 1036
    :goto_0
    iget-object v2, p0, Lcom/android/ims/internal/IImsCallSessionListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@24
    const/16 v3, 0x18

    #@26
    const/4 v4, 0x0

    #@27
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@2a
    .line 1037
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2d
    .line 1040
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 1041
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@33
    .line 1022
    return-void

    #@34
    .line 1034
    :cond_1
    const/4 v2, 0x0

    #@35
    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@38
    goto :goto_0

    #@39
    .line 1039
    :catchall_0
    move-exception v2

    #@3a
    .line 1040
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@3d
    .line 1041
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@40
    .line 1039
    throw v2
.end method

.method public callSessionHandover(Lcom/android/ims/internal/IImsCallSession;IILcom/android/ims/ImsReasonInfo;)V
    .locals 5
    .param p1, "session"    # Lcom/android/ims/internal/IImsCallSession;
    .param p2, "srcAccessTech"    # I
    .param p3, "targetAccessTech"    # I
    .param p4, "reasonInfo"    # Lcom/android/ims/ImsReasonInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1069
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 1070
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 1072
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.ims.internal.IImsCallSessionListener"

    #@c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 1073
    if-eqz p1, :cond_0

    #@11
    invoke-interface {p1}, Lcom/android/ims/internal/IImsCallSession;->asBinder()Landroid/os/IBinder;

    #@14
    move-result-object v2

    #@15
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@18
    .line 1074
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@1b
    .line 1075
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    #@1e
    .line 1076
    if-eqz p4, :cond_1

    #@20
    .line 1077
    const/4 v2, 0x1

    #@21
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@24
    .line 1078
    const/4 v2, 0x0

    #@25
    invoke-virtual {p4, v0, v2}, Lcom/android/ims/ImsReasonInfo;->writeToParcel(Landroid/os/Parcel;I)V

    #@28
    .line 1083
    :goto_0
    iget-object v2, p0, Lcom/android/ims/internal/IImsCallSessionListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@2a
    const/16 v3, 0x1a

    #@2c
    const/4 v4, 0x0

    #@2d
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@30
    .line 1084
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@33
    .line 1087
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@36
    .line 1088
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@39
    .line 1067
    return-void

    #@3a
    .line 1081
    :cond_1
    const/4 v2, 0x0

    #@3b
    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3e
    goto :goto_0

    #@3f
    .line 1086
    :catchall_0
    move-exception v2

    #@40
    .line 1087
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@43
    .line 1088
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@46
    .line 1086
    throw v2
.end method

.method public callSessionHandoverFailed(Lcom/android/ims/internal/IImsCallSession;IILcom/android/ims/ImsReasonInfo;)V
    .locals 5
    .param p1, "session"    # Lcom/android/ims/internal/IImsCallSession;
    .param p2, "srcAccessTech"    # I
    .param p3, "targetAccessTech"    # I
    .param p4, "reasonInfo"    # Lcom/android/ims/ImsReasonInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1093
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 1094
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 1096
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.ims.internal.IImsCallSessionListener"

    #@c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 1097
    if-eqz p1, :cond_0

    #@11
    invoke-interface {p1}, Lcom/android/ims/internal/IImsCallSession;->asBinder()Landroid/os/IBinder;

    #@14
    move-result-object v2

    #@15
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@18
    .line 1098
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@1b
    .line 1099
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    #@1e
    .line 1100
    if-eqz p4, :cond_1

    #@20
    .line 1101
    const/4 v2, 0x1

    #@21
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@24
    .line 1102
    const/4 v2, 0x0

    #@25
    invoke-virtual {p4, v0, v2}, Lcom/android/ims/ImsReasonInfo;->writeToParcel(Landroid/os/Parcel;I)V

    #@28
    .line 1107
    :goto_0
    iget-object v2, p0, Lcom/android/ims/internal/IImsCallSessionListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@2a
    const/16 v3, 0x1b

    #@2c
    const/4 v4, 0x0

    #@2d
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@30
    .line 1108
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@33
    .line 1111
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@36
    .line 1112
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@39
    .line 1091
    return-void

    #@3a
    .line 1105
    :cond_1
    const/4 v2, 0x0

    #@3b
    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3e
    goto :goto_0

    #@3f
    .line 1110
    :catchall_0
    move-exception v2

    #@40
    .line 1111
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@43
    .line 1112
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@46
    .line 1110
    throw v2
.end method

.method public callSessionHeld(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsCallProfile;)V
    .locals 5
    .param p1, "session"    # Lcom/android/ims/internal/IImsCallSession;
    .param p2, "profile"    # Lcom/android/ims/ImsCallProfile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 609
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 610
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 612
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.ims.internal.IImsCallSessionListener"

    #@c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 613
    if-eqz p1, :cond_0

    #@11
    invoke-interface {p1}, Lcom/android/ims/internal/IImsCallSession;->asBinder()Landroid/os/IBinder;

    #@14
    move-result-object v2

    #@15
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@18
    .line 614
    if-eqz p2, :cond_1

    #@1a
    .line 615
    const/4 v2, 0x1

    #@1b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@1e
    .line 616
    const/4 v2, 0x0

    #@1f
    invoke-virtual {p2, v0, v2}, Lcom/android/ims/ImsCallProfile;->writeToParcel(Landroid/os/Parcel;I)V

    #@22
    .line 621
    :goto_0
    iget-object v2, p0, Lcom/android/ims/internal/IImsCallSessionListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@24
    const/4 v3, 0x5

    #@25
    const/4 v4, 0x0

    #@26
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@29
    .line 622
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2c
    .line 625
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2f
    .line 626
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@32
    .line 607
    return-void

    #@33
    .line 619
    :cond_1
    const/4 v2, 0x0

    #@34
    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@37
    goto :goto_0

    #@38
    .line 624
    :catchall_0
    move-exception v2

    #@39
    .line 625
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@3c
    .line 626
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@3f
    .line 624
    throw v2
.end method

.method public callSessionHoldFailed(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsReasonInfo;)V
    .locals 5
    .param p1, "session"    # Lcom/android/ims/internal/IImsCallSession;
    .param p2, "reasonInfo"    # Lcom/android/ims/ImsReasonInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 631
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 632
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 634
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.ims.internal.IImsCallSessionListener"

    #@c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 635
    if-eqz p1, :cond_0

    #@11
    invoke-interface {p1}, Lcom/android/ims/internal/IImsCallSession;->asBinder()Landroid/os/IBinder;

    #@14
    move-result-object v2

    #@15
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@18
    .line 636
    if-eqz p2, :cond_1

    #@1a
    .line 637
    const/4 v2, 0x1

    #@1b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@1e
    .line 638
    const/4 v2, 0x0

    #@1f
    invoke-virtual {p2, v0, v2}, Lcom/android/ims/ImsReasonInfo;->writeToParcel(Landroid/os/Parcel;I)V

    #@22
    .line 643
    :goto_0
    iget-object v2, p0, Lcom/android/ims/internal/IImsCallSessionListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@24
    const/4 v3, 0x6

    #@25
    const/4 v4, 0x0

    #@26
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@29
    .line 644
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2c
    .line 647
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2f
    .line 648
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@32
    .line 629
    return-void

    #@33
    .line 641
    :cond_1
    const/4 v2, 0x0

    #@34
    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@37
    goto :goto_0

    #@38
    .line 646
    :catchall_0
    move-exception v2

    #@39
    .line 647
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@3c
    .line 648
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@3f
    .line 646
    throw v2
.end method

.method public callSessionHoldReceived(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsCallProfile;)V
    .locals 5
    .param p1, "session"    # Lcom/android/ims/internal/IImsCallSession;
    .param p2, "profile"    # Lcom/android/ims/ImsCallProfile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 653
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 654
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 656
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.ims.internal.IImsCallSessionListener"

    #@c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 657
    if-eqz p1, :cond_0

    #@11
    invoke-interface {p1}, Lcom/android/ims/internal/IImsCallSession;->asBinder()Landroid/os/IBinder;

    #@14
    move-result-object v2

    #@15
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@18
    .line 658
    if-eqz p2, :cond_1

    #@1a
    .line 659
    const/4 v2, 0x1

    #@1b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@1e
    .line 660
    const/4 v2, 0x0

    #@1f
    invoke-virtual {p2, v0, v2}, Lcom/android/ims/ImsCallProfile;->writeToParcel(Landroid/os/Parcel;I)V

    #@22
    .line 665
    :goto_0
    iget-object v2, p0, Lcom/android/ims/internal/IImsCallSessionListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@24
    const/4 v3, 0x7

    #@25
    const/4 v4, 0x0

    #@26
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@29
    .line 666
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2c
    .line 669
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2f
    .line 670
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@32
    .line 651
    return-void

    #@33
    .line 663
    :cond_1
    const/4 v2, 0x0

    #@34
    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@37
    goto :goto_0

    #@38
    .line 668
    :catchall_0
    move-exception v2

    #@39
    .line 669
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@3c
    .line 670
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@3f
    .line 668
    throw v2
.end method

.method public callSessionInviteParticipantsRequestDelivered(Lcom/android/ims/internal/IImsCallSession;)V
    .locals 5
    .param p1, "session"    # Lcom/android/ims/internal/IImsCallSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 947
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 948
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 950
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.ims.internal.IImsCallSessionListener"

    #@c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 951
    if-eqz p1, :cond_0

    #@11
    invoke-interface {p1}, Lcom/android/ims/internal/IImsCallSession;->asBinder()Landroid/os/IBinder;

    #@14
    move-result-object v2

    #@15
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@18
    .line 952
    iget-object v2, p0, Lcom/android/ims/internal/IImsCallSessionListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1a
    const/16 v3, 0x14

    #@1c
    const/4 v4, 0x0

    #@1d
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@20
    .line 953
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@23
    .line 956
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 957
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 945
    return-void

    #@2a
    .line 955
    :catchall_0
    move-exception v2

    #@2b
    .line 956
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2e
    .line 957
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@31
    .line 955
    throw v2
.end method

.method public callSessionInviteParticipantsRequestFailed(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsReasonInfo;)V
    .locals 5
    .param p1, "session"    # Lcom/android/ims/internal/IImsCallSession;
    .param p2, "reasonInfo"    # Lcom/android/ims/ImsReasonInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 962
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 963
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 965
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.ims.internal.IImsCallSessionListener"

    #@c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 966
    if-eqz p1, :cond_0

    #@11
    invoke-interface {p1}, Lcom/android/ims/internal/IImsCallSession;->asBinder()Landroid/os/IBinder;

    #@14
    move-result-object v2

    #@15
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@18
    .line 967
    if-eqz p2, :cond_1

    #@1a
    .line 968
    const/4 v2, 0x1

    #@1b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@1e
    .line 969
    const/4 v2, 0x0

    #@1f
    invoke-virtual {p2, v0, v2}, Lcom/android/ims/ImsReasonInfo;->writeToParcel(Landroid/os/Parcel;I)V

    #@22
    .line 974
    :goto_0
    iget-object v2, p0, Lcom/android/ims/internal/IImsCallSessionListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@24
    const/16 v3, 0x15

    #@26
    const/4 v4, 0x0

    #@27
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@2a
    .line 975
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2d
    .line 978
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 979
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@33
    .line 960
    return-void

    #@34
    .line 972
    :cond_1
    const/4 v2, 0x0

    #@35
    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@38
    goto :goto_0

    #@39
    .line 977
    :catchall_0
    move-exception v2

    #@3a
    .line 978
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@3d
    .line 979
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@40
    .line 977
    throw v2
.end method

.method public callSessionMergeComplete(Lcom/android/ims/internal/IImsCallSession;)V
    .locals 5
    .param p1, "session"    # Lcom/android/ims/internal/IImsCallSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 767
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 768
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 770
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.ims.internal.IImsCallSessionListener"

    #@c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 771
    if-eqz p1, :cond_0

    #@11
    invoke-interface {p1}, Lcom/android/ims/internal/IImsCallSession;->asBinder()Landroid/os/IBinder;

    #@14
    move-result-object v2

    #@15
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@18
    .line 772
    iget-object v2, p0, Lcom/android/ims/internal/IImsCallSessionListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1a
    const/16 v3, 0xc

    #@1c
    const/4 v4, 0x0

    #@1d
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@20
    .line 773
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@23
    .line 776
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 777
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 765
    return-void

    #@2a
    .line 775
    :catchall_0
    move-exception v2

    #@2b
    .line 776
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2e
    .line 777
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@31
    .line 775
    throw v2
.end method

.method public callSessionMergeFailed(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsReasonInfo;)V
    .locals 5
    .param p1, "session"    # Lcom/android/ims/internal/IImsCallSession;
    .param p2, "reasonInfo"    # Lcom/android/ims/ImsReasonInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 782
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 783
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 785
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.ims.internal.IImsCallSessionListener"

    #@c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 786
    if-eqz p1, :cond_0

    #@11
    invoke-interface {p1}, Lcom/android/ims/internal/IImsCallSession;->asBinder()Landroid/os/IBinder;

    #@14
    move-result-object v2

    #@15
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@18
    .line 787
    if-eqz p2, :cond_1

    #@1a
    .line 788
    const/4 v2, 0x1

    #@1b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@1e
    .line 789
    const/4 v2, 0x0

    #@1f
    invoke-virtual {p2, v0, v2}, Lcom/android/ims/ImsReasonInfo;->writeToParcel(Landroid/os/Parcel;I)V

    #@22
    .line 794
    :goto_0
    iget-object v2, p0, Lcom/android/ims/internal/IImsCallSessionListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@24
    const/16 v3, 0xd

    #@26
    const/4 v4, 0x0

    #@27
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@2a
    .line 795
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2d
    .line 798
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 799
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@33
    .line 780
    return-void

    #@34
    .line 792
    :cond_1
    const/4 v2, 0x0

    #@35
    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@38
    goto :goto_0

    #@39
    .line 797
    :catchall_0
    move-exception v2

    #@3a
    .line 798
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@3d
    .line 799
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@40
    .line 797
    throw v2
.end method

.method public callSessionMergeStarted(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsCallProfile;)V
    .locals 5
    .param p1, "session"    # Lcom/android/ims/internal/IImsCallSession;
    .param p2, "newSession"    # Lcom/android/ims/internal/IImsCallSession;
    .param p3, "profile"    # Lcom/android/ims/ImsCallProfile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 744
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 745
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 747
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.ims.internal.IImsCallSessionListener"

    #@c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 748
    if-eqz p1, :cond_1

    #@11
    invoke-interface {p1}, Lcom/android/ims/internal/IImsCallSession;->asBinder()Landroid/os/IBinder;

    #@14
    move-result-object v3

    #@15
    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@18
    .line 749
    if-eqz p2, :cond_0

    #@1a
    invoke-interface {p2}, Lcom/android/ims/internal/IImsCallSession;->asBinder()Landroid/os/IBinder;

    #@1d
    move-result-object v2

    #@1e
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@21
    .line 750
    if-eqz p3, :cond_2

    #@23
    .line 751
    const/4 v2, 0x1

    #@24
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@27
    .line 752
    const/4 v2, 0x0

    #@28
    invoke-virtual {p3, v0, v2}, Lcom/android/ims/ImsCallProfile;->writeToParcel(Landroid/os/Parcel;I)V

    #@2b
    .line 757
    :goto_1
    iget-object v2, p0, Lcom/android/ims/internal/IImsCallSessionListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@2d
    const/16 v3, 0xb

    #@2f
    const/4 v4, 0x0

    #@30
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@33
    .line 758
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@36
    .line 761
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@39
    .line 762
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@3c
    .line 742
    return-void

    #@3d
    :cond_1
    move-object v3, v2

    #@3e
    .line 748
    goto :goto_0

    #@3f
    .line 755
    :cond_2
    const/4 v2, 0x0

    #@40
    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@43
    goto :goto_1

    #@44
    .line 760
    :catchall_0
    move-exception v2

    #@45
    .line 761
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@48
    .line 762
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@4b
    .line 760
    throw v2
.end method

.method public callSessionMultipartyStateChanged(Lcom/android/ims/internal/IImsCallSession;Z)V
    .locals 5
    .param p1, "session"    # Lcom/android/ims/internal/IImsCallSession;
    .param p2, "isMultiParty"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    const/4 v2, 0x0

    #@2
    .line 1147
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@5
    move-result-object v0

    #@6
    .line 1148
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@9
    move-result-object v1

    #@a
    .line 1150
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "com.android.ims.internal.IImsCallSessionListener"

    #@d
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@10
    .line 1151
    if-eqz p1, :cond_0

    #@12
    invoke-interface {p1}, Lcom/android/ims/internal/IImsCallSession;->asBinder()Landroid/os/IBinder;

    #@15
    move-result-object v3

    #@16
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@19
    .line 1152
    if-eqz p2, :cond_1

    #@1b
    const/4 v2, 0x1

    #@1c
    :cond_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@1f
    .line 1153
    iget-object v2, p0, Lcom/android/ims/internal/IImsCallSessionListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@21
    const/16 v3, 0x1d

    #@23
    const/4 v4, 0x0

    #@24
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@27
    .line 1154
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2a
    .line 1157
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 1158
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 1145
    return-void

    #@31
    .line 1156
    :catchall_0
    move-exception v2

    #@32
    .line 1157
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@35
    .line 1158
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@38
    .line 1156
    throw v2
.end method

.method public callSessionProgressing(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsStreamMediaProfile;)V
    .locals 5
    .param p1, "session"    # Lcom/android/ims/internal/IImsCallSession;
    .param p2, "profile"    # Lcom/android/ims/ImsStreamMediaProfile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 518
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 519
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 521
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.ims.internal.IImsCallSessionListener"

    #@c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 522
    if-eqz p1, :cond_0

    #@11
    invoke-interface {p1}, Lcom/android/ims/internal/IImsCallSession;->asBinder()Landroid/os/IBinder;

    #@14
    move-result-object v2

    #@15
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@18
    .line 523
    if-eqz p2, :cond_1

    #@1a
    .line 524
    const/4 v2, 0x1

    #@1b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@1e
    .line 525
    const/4 v2, 0x0

    #@1f
    invoke-virtual {p2, v0, v2}, Lcom/android/ims/ImsStreamMediaProfile;->writeToParcel(Landroid/os/Parcel;I)V

    #@22
    .line 530
    :goto_0
    iget-object v2, p0, Lcom/android/ims/internal/IImsCallSessionListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@24
    const/4 v3, 0x1

    #@25
    const/4 v4, 0x0

    #@26
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@29
    .line 531
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2c
    .line 534
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2f
    .line 535
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@32
    .line 516
    return-void

    #@33
    .line 528
    :cond_1
    const/4 v2, 0x0

    #@34
    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@37
    goto :goto_0

    #@38
    .line 533
    :catchall_0
    move-exception v2

    #@39
    .line 534
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@3c
    .line 535
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@3f
    .line 533
    throw v2
.end method

.method public callSessionRemoveParticipantsRequestDelivered(Lcom/android/ims/internal/IImsCallSession;)V
    .locals 5
    .param p1, "session"    # Lcom/android/ims/internal/IImsCallSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 984
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 985
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 987
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.ims.internal.IImsCallSessionListener"

    #@c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 988
    if-eqz p1, :cond_0

    #@11
    invoke-interface {p1}, Lcom/android/ims/internal/IImsCallSession;->asBinder()Landroid/os/IBinder;

    #@14
    move-result-object v2

    #@15
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@18
    .line 989
    iget-object v2, p0, Lcom/android/ims/internal/IImsCallSessionListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1a
    const/16 v3, 0x16

    #@1c
    const/4 v4, 0x0

    #@1d
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@20
    .line 990
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@23
    .line 993
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 994
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 982
    return-void

    #@2a
    .line 992
    :catchall_0
    move-exception v2

    #@2b
    .line 993
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2e
    .line 994
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@31
    .line 992
    throw v2
.end method

.method public callSessionRemoveParticipantsRequestFailed(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsReasonInfo;)V
    .locals 5
    .param p1, "session"    # Lcom/android/ims/internal/IImsCallSession;
    .param p2, "reasonInfo"    # Lcom/android/ims/ImsReasonInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 999
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 1000
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 1002
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.ims.internal.IImsCallSessionListener"

    #@c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 1003
    if-eqz p1, :cond_0

    #@11
    invoke-interface {p1}, Lcom/android/ims/internal/IImsCallSession;->asBinder()Landroid/os/IBinder;

    #@14
    move-result-object v2

    #@15
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@18
    .line 1004
    if-eqz p2, :cond_1

    #@1a
    .line 1005
    const/4 v2, 0x1

    #@1b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@1e
    .line 1006
    const/4 v2, 0x0

    #@1f
    invoke-virtual {p2, v0, v2}, Lcom/android/ims/ImsReasonInfo;->writeToParcel(Landroid/os/Parcel;I)V

    #@22
    .line 1011
    :goto_0
    iget-object v2, p0, Lcom/android/ims/internal/IImsCallSessionListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@24
    const/16 v3, 0x17

    #@26
    const/4 v4, 0x0

    #@27
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@2a
    .line 1012
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2d
    .line 1015
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 1016
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@33
    .line 997
    return-void

    #@34
    .line 1009
    :cond_1
    const/4 v2, 0x0

    #@35
    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@38
    goto :goto_0

    #@39
    .line 1014
    :catchall_0
    move-exception v2

    #@3a
    .line 1015
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@3d
    .line 1016
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@40
    .line 1014
    throw v2
.end method

.method public callSessionResumeFailed(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsReasonInfo;)V
    .locals 5
    .param p1, "session"    # Lcom/android/ims/internal/IImsCallSession;
    .param p2, "reasonInfo"    # Lcom/android/ims/ImsReasonInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 697
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 698
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 700
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.ims.internal.IImsCallSessionListener"

    #@c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 701
    if-eqz p1, :cond_0

    #@11
    invoke-interface {p1}, Lcom/android/ims/internal/IImsCallSession;->asBinder()Landroid/os/IBinder;

    #@14
    move-result-object v2

    #@15
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@18
    .line 702
    if-eqz p2, :cond_1

    #@1a
    .line 703
    const/4 v2, 0x1

    #@1b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@1e
    .line 704
    const/4 v2, 0x0

    #@1f
    invoke-virtual {p2, v0, v2}, Lcom/android/ims/ImsReasonInfo;->writeToParcel(Landroid/os/Parcel;I)V

    #@22
    .line 709
    :goto_0
    iget-object v2, p0, Lcom/android/ims/internal/IImsCallSessionListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@24
    const/16 v3, 0x9

    #@26
    const/4 v4, 0x0

    #@27
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@2a
    .line 710
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2d
    .line 713
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 714
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@33
    .line 695
    return-void

    #@34
    .line 707
    :cond_1
    const/4 v2, 0x0

    #@35
    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@38
    goto :goto_0

    #@39
    .line 712
    :catchall_0
    move-exception v2

    #@3a
    .line 713
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@3d
    .line 714
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@40
    .line 712
    throw v2
.end method

.method public callSessionResumeReceived(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsCallProfile;)V
    .locals 5
    .param p1, "session"    # Lcom/android/ims/internal/IImsCallSession;
    .param p2, "profile"    # Lcom/android/ims/ImsCallProfile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 719
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 720
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 722
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.ims.internal.IImsCallSessionListener"

    #@c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 723
    if-eqz p1, :cond_0

    #@11
    invoke-interface {p1}, Lcom/android/ims/internal/IImsCallSession;->asBinder()Landroid/os/IBinder;

    #@14
    move-result-object v2

    #@15
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@18
    .line 724
    if-eqz p2, :cond_1

    #@1a
    .line 725
    const/4 v2, 0x1

    #@1b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@1e
    .line 726
    const/4 v2, 0x0

    #@1f
    invoke-virtual {p2, v0, v2}, Lcom/android/ims/ImsCallProfile;->writeToParcel(Landroid/os/Parcel;I)V

    #@22
    .line 731
    :goto_0
    iget-object v2, p0, Lcom/android/ims/internal/IImsCallSessionListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@24
    const/16 v3, 0xa

    #@26
    const/4 v4, 0x0

    #@27
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@2a
    .line 732
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2d
    .line 735
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 736
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@33
    .line 717
    return-void

    #@34
    .line 729
    :cond_1
    const/4 v2, 0x0

    #@35
    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@38
    goto :goto_0

    #@39
    .line 734
    :catchall_0
    move-exception v2

    #@3a
    .line 735
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@3d
    .line 736
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@40
    .line 734
    throw v2
.end method

.method public callSessionResumed(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsCallProfile;)V
    .locals 5
    .param p1, "session"    # Lcom/android/ims/internal/IImsCallSession;
    .param p2, "profile"    # Lcom/android/ims/ImsCallProfile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 675
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 676
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 678
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.ims.internal.IImsCallSessionListener"

    #@c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 679
    if-eqz p1, :cond_0

    #@11
    invoke-interface {p1}, Lcom/android/ims/internal/IImsCallSession;->asBinder()Landroid/os/IBinder;

    #@14
    move-result-object v2

    #@15
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@18
    .line 680
    if-eqz p2, :cond_1

    #@1a
    .line 681
    const/4 v2, 0x1

    #@1b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@1e
    .line 682
    const/4 v2, 0x0

    #@1f
    invoke-virtual {p2, v0, v2}, Lcom/android/ims/ImsCallProfile;->writeToParcel(Landroid/os/Parcel;I)V

    #@22
    .line 687
    :goto_0
    iget-object v2, p0, Lcom/android/ims/internal/IImsCallSessionListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@24
    const/16 v3, 0x8

    #@26
    const/4 v4, 0x0

    #@27
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@2a
    .line 688
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2d
    .line 691
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 692
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@33
    .line 673
    return-void

    #@34
    .line 685
    :cond_1
    const/4 v2, 0x0

    #@35
    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@38
    goto :goto_0

    #@39
    .line 690
    :catchall_0
    move-exception v2

    #@3a
    .line 691
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@3d
    .line 692
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@40
    .line 690
    throw v2
.end method

.method public callSessionStartFailed(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsReasonInfo;)V
    .locals 5
    .param p1, "session"    # Lcom/android/ims/internal/IImsCallSession;
    .param p2, "reasonInfo"    # Lcom/android/ims/ImsReasonInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 562
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 563
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 565
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.ims.internal.IImsCallSessionListener"

    #@c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 566
    if-eqz p1, :cond_0

    #@11
    invoke-interface {p1}, Lcom/android/ims/internal/IImsCallSession;->asBinder()Landroid/os/IBinder;

    #@14
    move-result-object v2

    #@15
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@18
    .line 567
    if-eqz p2, :cond_1

    #@1a
    .line 568
    const/4 v2, 0x1

    #@1b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@1e
    .line 569
    const/4 v2, 0x0

    #@1f
    invoke-virtual {p2, v0, v2}, Lcom/android/ims/ImsReasonInfo;->writeToParcel(Landroid/os/Parcel;I)V

    #@22
    .line 574
    :goto_0
    iget-object v2, p0, Lcom/android/ims/internal/IImsCallSessionListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@24
    const/4 v3, 0x3

    #@25
    const/4 v4, 0x0

    #@26
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@29
    .line 575
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2c
    .line 578
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2f
    .line 579
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@32
    .line 560
    return-void

    #@33
    .line 572
    :cond_1
    const/4 v2, 0x0

    #@34
    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@37
    goto :goto_0

    #@38
    .line 577
    :catchall_0
    move-exception v2

    #@39
    .line 578
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@3c
    .line 579
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@3f
    .line 577
    throw v2
.end method

.method public callSessionStarted(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsCallProfile;)V
    .locals 5
    .param p1, "session"    # Lcom/android/ims/internal/IImsCallSession;
    .param p2, "profile"    # Lcom/android/ims/ImsCallProfile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 540
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 541
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 543
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.ims.internal.IImsCallSessionListener"

    #@c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 544
    if-eqz p1, :cond_0

    #@11
    invoke-interface {p1}, Lcom/android/ims/internal/IImsCallSession;->asBinder()Landroid/os/IBinder;

    #@14
    move-result-object v2

    #@15
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@18
    .line 545
    if-eqz p2, :cond_1

    #@1a
    .line 546
    const/4 v2, 0x1

    #@1b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@1e
    .line 547
    const/4 v2, 0x0

    #@1f
    invoke-virtual {p2, v0, v2}, Lcom/android/ims/ImsCallProfile;->writeToParcel(Landroid/os/Parcel;I)V

    #@22
    .line 552
    :goto_0
    iget-object v2, p0, Lcom/android/ims/internal/IImsCallSessionListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@24
    const/4 v3, 0x2

    #@25
    const/4 v4, 0x0

    #@26
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@29
    .line 553
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2c
    .line 556
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2f
    .line 557
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@32
    .line 538
    return-void

    #@33
    .line 550
    :cond_1
    const/4 v2, 0x0

    #@34
    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@37
    goto :goto_0

    #@38
    .line 555
    :catchall_0
    move-exception v2

    #@39
    .line 556
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@3c
    .line 557
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@3f
    .line 555
    throw v2
.end method

.method public callSessionTerminated(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsReasonInfo;)V
    .locals 5
    .param p1, "session"    # Lcom/android/ims/internal/IImsCallSession;
    .param p2, "reasonInfo"    # Lcom/android/ims/ImsReasonInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 584
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 585
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 587
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.ims.internal.IImsCallSessionListener"

    #@c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 588
    if-eqz p1, :cond_0

    #@11
    invoke-interface {p1}, Lcom/android/ims/internal/IImsCallSession;->asBinder()Landroid/os/IBinder;

    #@14
    move-result-object v2

    #@15
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@18
    .line 589
    if-eqz p2, :cond_1

    #@1a
    .line 590
    const/4 v2, 0x1

    #@1b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@1e
    .line 591
    const/4 v2, 0x0

    #@1f
    invoke-virtual {p2, v0, v2}, Lcom/android/ims/ImsReasonInfo;->writeToParcel(Landroid/os/Parcel;I)V

    #@22
    .line 596
    :goto_0
    iget-object v2, p0, Lcom/android/ims/internal/IImsCallSessionListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@24
    const/4 v3, 0x4

    #@25
    const/4 v4, 0x0

    #@26
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@29
    .line 597
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2c
    .line 600
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2f
    .line 601
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@32
    .line 582
    return-void

    #@33
    .line 594
    :cond_1
    const/4 v2, 0x0

    #@34
    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@37
    goto :goto_0

    #@38
    .line 599
    :catchall_0
    move-exception v2

    #@39
    .line 600
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@3c
    .line 601
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@3f
    .line 599
    throw v2
.end method

.method public callSessionTtyModeReceived(Lcom/android/ims/internal/IImsCallSession;I)V
    .locals 5
    .param p1, "session"    # Lcom/android/ims/internal/IImsCallSession;
    .param p2, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1125
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 1126
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 1128
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.ims.internal.IImsCallSessionListener"

    #@c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 1129
    if-eqz p1, :cond_0

    #@11
    invoke-interface {p1}, Lcom/android/ims/internal/IImsCallSession;->asBinder()Landroid/os/IBinder;

    #@14
    move-result-object v2

    #@15
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@18
    .line 1130
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@1b
    .line 1131
    iget-object v2, p0, Lcom/android/ims/internal/IImsCallSessionListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1d
    const/16 v3, 0x1c

    #@1f
    const/4 v4, 0x0

    #@20
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@23
    .line 1132
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@26
    .line 1135
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 1136
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 1123
    return-void

    #@2d
    .line 1134
    :catchall_0
    move-exception v2

    #@2e
    .line 1135
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@31
    .line 1136
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@34
    .line 1134
    throw v2
.end method

.method public callSessionUpdateFailed(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsReasonInfo;)V
    .locals 5
    .param p1, "session"    # Lcom/android/ims/internal/IImsCallSession;
    .param p2, "reasonInfo"    # Lcom/android/ims/ImsReasonInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 829
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 830
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 832
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.ims.internal.IImsCallSessionListener"

    #@c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 833
    if-eqz p1, :cond_0

    #@11
    invoke-interface {p1}, Lcom/android/ims/internal/IImsCallSession;->asBinder()Landroid/os/IBinder;

    #@14
    move-result-object v2

    #@15
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@18
    .line 834
    if-eqz p2, :cond_1

    #@1a
    .line 835
    const/4 v2, 0x1

    #@1b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@1e
    .line 836
    const/4 v2, 0x0

    #@1f
    invoke-virtual {p2, v0, v2}, Lcom/android/ims/ImsReasonInfo;->writeToParcel(Landroid/os/Parcel;I)V

    #@22
    .line 841
    :goto_0
    iget-object v2, p0, Lcom/android/ims/internal/IImsCallSessionListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@24
    const/16 v3, 0xf

    #@26
    const/4 v4, 0x0

    #@27
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@2a
    .line 842
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2d
    .line 845
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 846
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@33
    .line 827
    return-void

    #@34
    .line 839
    :cond_1
    const/4 v2, 0x0

    #@35
    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@38
    goto :goto_0

    #@39
    .line 844
    :catchall_0
    move-exception v2

    #@3a
    .line 845
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@3d
    .line 846
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@40
    .line 844
    throw v2
.end method

.method public callSessionUpdateReceived(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsCallProfile;)V
    .locals 5
    .param p1, "session"    # Lcom/android/ims/internal/IImsCallSession;
    .param p2, "profile"    # Lcom/android/ims/ImsCallProfile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 851
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 852
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 854
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.ims.internal.IImsCallSessionListener"

    #@c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 855
    if-eqz p1, :cond_0

    #@11
    invoke-interface {p1}, Lcom/android/ims/internal/IImsCallSession;->asBinder()Landroid/os/IBinder;

    #@14
    move-result-object v2

    #@15
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@18
    .line 856
    if-eqz p2, :cond_1

    #@1a
    .line 857
    const/4 v2, 0x1

    #@1b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@1e
    .line 858
    const/4 v2, 0x0

    #@1f
    invoke-virtual {p2, v0, v2}, Lcom/android/ims/ImsCallProfile;->writeToParcel(Landroid/os/Parcel;I)V

    #@22
    .line 863
    :goto_0
    iget-object v2, p0, Lcom/android/ims/internal/IImsCallSessionListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@24
    const/16 v3, 0x10

    #@26
    const/4 v4, 0x0

    #@27
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@2a
    .line 864
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2d
    .line 867
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 868
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@33
    .line 849
    return-void

    #@34
    .line 861
    :cond_1
    const/4 v2, 0x0

    #@35
    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@38
    goto :goto_0

    #@39
    .line 866
    :catchall_0
    move-exception v2

    #@3a
    .line 867
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@3d
    .line 868
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@40
    .line 866
    throw v2
.end method

.method public callSessionUpdated(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsCallProfile;)V
    .locals 5
    .param p1, "session"    # Lcom/android/ims/internal/IImsCallSession;
    .param p2, "profile"    # Lcom/android/ims/ImsCallProfile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 807
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 808
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 810
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.ims.internal.IImsCallSessionListener"

    #@c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 811
    if-eqz p1, :cond_0

    #@11
    invoke-interface {p1}, Lcom/android/ims/internal/IImsCallSession;->asBinder()Landroid/os/IBinder;

    #@14
    move-result-object v2

    #@15
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@18
    .line 812
    if-eqz p2, :cond_1

    #@1a
    .line 813
    const/4 v2, 0x1

    #@1b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@1e
    .line 814
    const/4 v2, 0x0

    #@1f
    invoke-virtual {p2, v0, v2}, Lcom/android/ims/ImsCallProfile;->writeToParcel(Landroid/os/Parcel;I)V

    #@22
    .line 819
    :goto_0
    iget-object v2, p0, Lcom/android/ims/internal/IImsCallSessionListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@24
    const/16 v3, 0xe

    #@26
    const/4 v4, 0x0

    #@27
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@2a
    .line 820
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2d
    .line 823
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 824
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@33
    .line 805
    return-void

    #@34
    .line 817
    :cond_1
    const/4 v2, 0x0

    #@35
    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@38
    goto :goto_0

    #@39
    .line 822
    :catchall_0
    move-exception v2

    #@3a
    .line 823
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@3d
    .line 824
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@40
    .line 822
    throw v2
.end method

.method public callSessionUssdMessageReceived(Lcom/android/ims/internal/IImsCallSession;ILjava/lang/String;)V
    .locals 5
    .param p1, "session"    # Lcom/android/ims/internal/IImsCallSession;
    .param p2, "mode"    # I
    .param p3, "ussdMessage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1049
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 1050
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 1052
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.ims.internal.IImsCallSessionListener"

    #@c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 1053
    if-eqz p1, :cond_0

    #@11
    invoke-interface {p1}, Lcom/android/ims/internal/IImsCallSession;->asBinder()Landroid/os/IBinder;

    #@14
    move-result-object v2

    #@15
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@18
    .line 1054
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@1b
    .line 1055
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1e
    .line 1056
    iget-object v2, p0, Lcom/android/ims/internal/IImsCallSessionListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@20
    const/16 v3, 0x19

    #@22
    const/4 v4, 0x0

    #@23
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@26
    .line 1057
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@29
    .line 1060
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 1061
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2f
    .line 1047
    return-void

    #@30
    .line 1059
    :catchall_0
    move-exception v2

    #@31
    .line 1060
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@34
    .line 1061
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@37
    .line 1059
    throw v2
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 511
    const-string/jumbo v0, "com.android.ims.internal.IImsCallSessionListener"

    #@3
    return-object v0
.end method
