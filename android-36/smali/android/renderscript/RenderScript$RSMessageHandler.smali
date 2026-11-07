.class public Landroid/renderscript/RenderScript$RSMessageHandler;
.super Ljava/lang/Object;
.source "RenderScript.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/renderscript/RenderScript;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RSMessageHandler"
.end annotation


# instance fields
.field protected whitelist mData:[I

.field protected whitelist mID:I

.field protected whitelist mLength:I


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 1154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 1

    .line 1159
    return-void
.end method
