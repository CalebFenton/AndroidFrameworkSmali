.class Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext$VarName;
.super Ljava/lang/Object;
.source "AndroidRemoteContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "VarName"
.end annotation


# instance fields
.field blacklist mId:I

.field blacklist mName:Ljava/lang/String;

.field blacklist mType:I


# direct methods
.method constructor blacklist <init>(Ljava/lang/String;II)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "id"    # I
    .param p3, "type"    # I

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext$VarName;->mName:Ljava/lang/String;

    .line 80
    iput p2, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext$VarName;->mId:I

    .line 81
    iput p3, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext$VarName;->mType:I

    .line 82
    return-void
.end method
