.class public final Landroid/media/Session2Command$Result;
.super Ljava/lang/Object;
.source "Session2Command.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/Session2Command;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Result"
.end annotation


# static fields
.field public static final whitelist RESULT_ERROR_UNKNOWN_ERROR:I = -0x1

.field public static final whitelist RESULT_INFO_SKIPPED:I = 0x1

.field public static final whitelist RESULT_SUCCESS:I


# instance fields
.field private final blacklist mResultCode:I

.field private final blacklist mResultData:Landroid/os/Bundle;


# direct methods
.method public constructor whitelist <init>(ILandroid/os/Bundle;)V
    .registers 3

    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 195
    iput p1, p0, Landroid/media/Session2Command$Result;->mResultCode:I

    .line 196
    iput-object p2, p0, Landroid/media/Session2Command$Result;->mResultData:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public whitelist getResultCode()I
    .registers 1

    .line 203
    iget p0, p0, Landroid/media/Session2Command$Result;->mResultCode:I

    return p0
.end method

.method public whitelist getResultData()Landroid/os/Bundle;
    .registers 1

    .line 211
    iget-object p0, p0, Landroid/media/Session2Command$Result;->mResultData:Landroid/os/Bundle;

    return-object p0
.end method
