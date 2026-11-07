.class public interface abstract Landroid/adservices/topics/ITopicsService;
.super Ljava/lang/Object;
.source "ITopicsService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/adservices/topics/ITopicsService$Stub;,
        Landroid/adservices/topics/ITopicsService$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.adservices.topics.ITopicsService"


# virtual methods
.method public abstract blacklist getTopics(Landroid/adservices/topics/GetTopicsParam;Landroid/adservices/common/CallerMetadata;Landroid/adservices/topics/IGetTopicsCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
