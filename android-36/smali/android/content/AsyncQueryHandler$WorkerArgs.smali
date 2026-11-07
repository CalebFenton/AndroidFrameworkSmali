.class public final Landroid/content/AsyncQueryHandler$WorkerArgs;
.super Ljava/lang/Object;
.source "AsyncQueryHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/AsyncQueryHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "WorkerArgs"
.end annotation


# instance fields
.field public whitelist cookie:Ljava/lang/Object;

.field public whitelist handler:Landroid/os/Handler;

.field public whitelist orderBy:Ljava/lang/String;

.field public whitelist projection:[Ljava/lang/String;

.field public whitelist result:Ljava/lang/Object;

.field public whitelist selection:Ljava/lang/String;

.field public whitelist selectionArgs:[Ljava/lang/String;

.field public whitelist uri:Landroid/net/Uri;

.field public whitelist values:Landroid/content/ContentValues;


# direct methods
.method protected constructor whitelist <init>()V
    .registers 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
