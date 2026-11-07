.class public interface abstract Landroid/app/appsearch/aidl/IAppSearchBatchResultCallback;
.super Ljava/lang/Object;
.source "go/retraceme 9d1b0eb8afe1d0bca7ff6f98d5e450578c137217f678797f24205462b21ce4f6"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/appsearch/aidl/IAppSearchBatchResultCallback$Stub;,
        Landroid/app/appsearch/aidl/IAppSearchBatchResultCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.app.appsearch.aidl.IAppSearchBatchResultCallback"


# virtual methods
.method public abstract blacklist onResult(Landroid/app/appsearch/aidl/AppSearchBatchResultParcel;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onSystemError(Landroid/app/appsearch/aidl/AppSearchResultParcel;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
