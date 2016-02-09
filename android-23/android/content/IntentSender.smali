.class public Landroid/content/IntentSender;
.super Ljava/lang/Object;
.source "IntentSender.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/IntentSender$SendIntentException;,
        Landroid/content/IntentSender$OnFinished;,
        Landroid/content/IntentSender$FinishedDispatcher;,
        Landroid/content/IntentSender$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/content/IntentSender;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mTarget:Landroid/content/IIntentSender;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 320
    new-instance v0, Landroid/content/IntentSender$1;

    #@2
    invoke-direct {v0}, Landroid/content/IntentSender$1;-><init>()V

    #@5
    .line 319
    sput-object v0, Landroid/content/IntentSender;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/IIntentSender;)V
    .locals 0
    .param p1, "target"    # Landroid/content/IIntentSender;

    #@0
    .prologue
    .line 366
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 367
    iput-object p1, p0, Landroid/content/IntentSender;->mTarget:Landroid/content/IIntentSender;

    #@5
    .line 366
    return-void
.end method

.method public constructor <init>(Landroid/os/IBinder;)V
    .locals 1
    .param p1, "target"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 371
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 372
    invoke-static {p1}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Landroid/content/IntentSender;->mTarget:Landroid/content/IIntentSender;

    #@9
    .line 371
    return-void
.end method

.method public static readIntentSenderOrNullFromParcel(Landroid/os/Parcel;)Landroid/content/IntentSender;
    .locals 2
    .param p0, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 356
    invoke-virtual {p0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@4
    move-result-object v0

    #@5
    .line 357
    .local v0, "b":Landroid/os/IBinder;
    if-eqz v0, :cond_0

    #@7
    new-instance v1, Landroid/content/IntentSender;

    #@9
    invoke-direct {v1, v0}, Landroid/content/IntentSender;-><init>(Landroid/os/IBinder;)V

    #@c
    :cond_0
    return-object v1
.end method

.method public static writeIntentSenderOrNullToParcel(Landroid/content/IntentSender;Landroid/os/Parcel;)V
    .locals 1
    .param p0, "sender"    # Landroid/content/IntentSender;
    .param p1, "out"    # Landroid/os/Parcel;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 341
    if-eqz p0, :cond_0

    #@3
    iget-object v0, p0, Landroid/content/IntentSender;->mTarget:Landroid/content/IIntentSender;

    #@5
    invoke-interface {v0}, Landroid/content/IIntentSender;->asBinder()Landroid/os/IBinder;

    #@8
    move-result-object v0

    #@9
    :cond_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@c
    .line 340
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 312
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "otherObj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 288
    instance-of v0, p1, Landroid/content/IntentSender;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 289
    iget-object v0, p0, Landroid/content/IntentSender;->mTarget:Landroid/content/IIntentSender;

    #@6
    invoke-interface {v0}, Landroid/content/IIntentSender;->asBinder()Landroid/os/IBinder;

    #@9
    move-result-object v0

    #@a
    check-cast p1, Landroid/content/IntentSender;

    #@c
    .end local p1    # "otherObj":Ljava/lang/Object;
    iget-object v1, p1, Landroid/content/IntentSender;->mTarget:Landroid/content/IIntentSender;

    #@e
    invoke-interface {v1}, Landroid/content/IIntentSender;->asBinder()Landroid/os/IBinder;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@15
    move-result v0

    #@16
    return v0

    #@17
    .line 292
    .restart local p1    # "otherObj":Ljava/lang/Object;
    :cond_0
    const/4 v0, 0x0

    #@18
    return v0
.end method

.method public getCreatorPackage()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 232
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@3
    move-result-object v1

    #@4
    .line 233
    iget-object v2, p0, Landroid/content/IntentSender;->mTarget:Landroid/content/IIntentSender;

    #@6
    .line 232
    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->getPackageForIntentSender(Landroid/content/IIntentSender;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    move-result-object v1

    #@a
    return-object v1

    #@b
    .line 234
    :catch_0
    move-exception v0

    #@c
    .line 236
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    #@d
    return-object v1
.end method

.method public getCreatorUid()I
    .locals 3

    #@0
    .prologue
    .line 251
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@3
    move-result-object v1

    #@4
    .line 252
    iget-object v2, p0, Landroid/content/IntentSender;->mTarget:Landroid/content/IIntentSender;

    #@6
    .line 251
    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->getUidForIntentSender(Landroid/content/IIntentSender;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    move-result v1

    #@a
    return v1

    #@b
    .line 253
    :catch_0
    move-exception v0

    #@c
    .line 255
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, -0x1

    #@d
    return v1
.end method

.method public getCreatorUserHandle()Landroid/os/UserHandle;
    .locals 5

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 272
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@4
    move-result-object v2

    #@5
    .line 273
    iget-object v4, p0, Landroid/content/IntentSender;->mTarget:Landroid/content/IIntentSender;

    #@7
    .line 272
    invoke-interface {v2, v4}, Landroid/app/IActivityManager;->getUidForIntentSender(Landroid/content/IIntentSender;)I

    #@a
    move-result v1

    #@b
    .line 274
    .local v1, "uid":I
    if-lez v1, :cond_0

    #@d
    new-instance v2, Landroid/os/UserHandle;

    #@f
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    #@12
    move-result v4

    #@13
    invoke-direct {v2, v4}, Landroid/os/UserHandle;-><init>(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@16
    :goto_0
    return-object v2

    #@17
    :cond_0
    move-object v2, v3

    #@18
    goto :goto_0

    #@19
    .line 275
    .end local v1    # "uid":I
    :catch_0
    move-exception v0

    #@1a
    .line 277
    .local v0, "e":Landroid/os/RemoteException;
    return-object v3
.end method

.method public getTarget()Landroid/content/IIntentSender;
    .locals 1

    #@0
    .prologue
    .line 362
    iget-object v0, p0, Landroid/content/IntentSender;->mTarget:Landroid/content/IIntentSender;

    #@2
    return-object v0
.end method

.method public getTargetPackage()Ljava/lang/String;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 213
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@3
    move-result-object v1

    #@4
    .line 214
    iget-object v2, p0, Landroid/content/IntentSender;->mTarget:Landroid/content/IIntentSender;

    #@6
    .line 213
    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->getPackageForIntentSender(Landroid/content/IIntentSender;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    move-result-object v1

    #@a
    return-object v1

    #@b
    .line 215
    :catch_0
    move-exception v0

    #@c
    .line 217
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    #@d
    return-object v1
.end method

.method public hashCode()I
    .locals 1

    #@0
    .prologue
    .line 297
    iget-object v0, p0, Landroid/content/IntentSender;->mTarget:Landroid/content/IIntentSender;

    #@2
    invoke-interface {v0}, Landroid/content/IIntentSender;->asBinder()Landroid/os/IBinder;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    #@9
    move-result v0

    #@a
    return v0
.end method

.method public sendIntent(Landroid/content/Context;ILandroid/content/Intent;Landroid/content/IntentSender$OnFinished;Landroid/os/Handler;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "code"    # I
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "onFinished"    # Landroid/content/IntentSender$OnFinished;
    .param p5, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    #@0
    .prologue
    .line 158
    const/4 v6, 0x0

    #@1
    move-object v0, p0

    #@2
    move-object v1, p1

    #@3
    move v2, p2

    #@4
    move-object v3, p3

    #@5
    move-object v4, p4

    #@6
    move-object v5, p5

    #@7
    invoke-virtual/range {v0 .. v6}, Landroid/content/IntentSender;->sendIntent(Landroid/content/Context;ILandroid/content/Intent;Landroid/content/IntentSender$OnFinished;Landroid/os/Handler;Ljava/lang/String;)V

    #@a
    .line 157
    return-void
.end method

.method public sendIntent(Landroid/content/Context;ILandroid/content/Intent;Landroid/content/IntentSender$OnFinished;Landroid/os/Handler;Ljava/lang/String;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "code"    # I
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "onFinished"    # Landroid/content/IntentSender$OnFinished;
    .param p5, "handler"    # Landroid/os/Handler;
    .param p6, "requiredPermission"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 191
    if-eqz p3, :cond_1

    #@3
    .line 192
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@6
    move-result-object v0

    #@7
    invoke-virtual {p3, v0}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    #@a
    move-result-object v3

    #@b
    .line 194
    :goto_0
    iget-object v0, p0, Landroid/content/IntentSender;->mTarget:Landroid/content/IIntentSender;

    #@d
    .line 195
    if-eqz p4, :cond_0

    #@f
    .line 196
    new-instance v4, Landroid/content/IntentSender$FinishedDispatcher;

    #@11
    invoke-direct {v4, p0, p4, p5}, Landroid/content/IntentSender$FinishedDispatcher;-><init>(Landroid/content/IntentSender;Landroid/content/IntentSender$OnFinished;Landroid/os/Handler;)V

    #@14
    .line 198
    :cond_0
    const/4 v6, 0x0

    #@15
    move v1, p2

    #@16
    move-object v2, p3

    #@17
    move-object v5, p6

    #@18
    .line 194
    invoke-interface/range {v0 .. v6}, Landroid/content/IIntentSender;->send(ILandroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;Ljava/lang/String;Landroid/os/Bundle;)I

    #@1b
    move-result v8

    #@1c
    .line 199
    .local v8, "res":I
    if-gez v8, :cond_2

    #@1e
    .line 200
    new-instance v0, Landroid/content/IntentSender$SendIntentException;

    #@20
    invoke-direct {v0}, Landroid/content/IntentSender$SendIntentException;-><init>()V

    #@23
    throw v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@24
    .line 202
    .end local v8    # "res":I
    :catch_0
    move-exception v7

    #@25
    .line 203
    .local v7, "e":Landroid/os/RemoteException;
    new-instance v0, Landroid/content/IntentSender$SendIntentException;

    #@27
    invoke-direct {v0}, Landroid/content/IntentSender$SendIntentException;-><init>()V

    #@2a
    throw v0

    #@2b
    .line 193
    .end local v7    # "e":Landroid/os/RemoteException;
    :cond_1
    const/4 v3, 0x0

    #@2c
    .local v3, "resolvedType":Ljava/lang/String;
    goto :goto_0

    #@2d
    .line 189
    .end local v3    # "resolvedType":Ljava/lang/String;
    .restart local v8    # "res":I
    :cond_2
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 302
    new-instance v0, Ljava/lang/StringBuilder;

    #@3
    const/16 v2, 0x80

    #@5
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    #@8
    .line 303
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v2, "IntentSender{"

    #@b
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    .line 304
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    #@11
    move-result v2

    #@12
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@15
    move-result-object v2

    #@16
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    .line 305
    const-string/jumbo v2, ": "

    #@1c
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    .line 306
    iget-object v2, p0, Landroid/content/IntentSender;->mTarget:Landroid/content/IIntentSender;

    #@21
    if-eqz v2, :cond_0

    #@23
    iget-object v1, p0, Landroid/content/IntentSender;->mTarget:Landroid/content/IIntentSender;

    #@25
    invoke-interface {v1}, Landroid/content/IIntentSender;->asBinder()Landroid/os/IBinder;

    #@28
    move-result-object v1

    #@29
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2c
    .line 307
    const/16 v1, 0x7d

    #@2e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@31
    .line 308
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@34
    move-result-object v1

    #@35
    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 316
    iget-object v0, p0, Landroid/content/IntentSender;->mTarget:Landroid/content/IIntentSender;

    #@2
    invoke-interface {v0}, Landroid/content/IIntentSender;->asBinder()Landroid/os/IBinder;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@9
    .line 315
    return-void
.end method
