.class public Lcom/android/internal/policy/KeyInterceptionInfo;
.super Ljava/lang/Object;
.source "KeyInterceptionInfo.java"


# instance fields
.field public final blacklist layoutParamsPrivateFlags:I

.field public final blacklist layoutParamsType:I

.field public final blacklist windowOwnerUid:I

.field public final blacklist windowTitle:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>(IILjava/lang/String;I)V
    .registers 5
    .param p1, "type"    # I
    .param p2, "flags"    # I
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "uid"    # I

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput p1, p0, Lcom/android/internal/policy/KeyInterceptionInfo;->layoutParamsType:I

    .line 33
    iput p2, p0, Lcom/android/internal/policy/KeyInterceptionInfo;->layoutParamsPrivateFlags:I

    .line 34
    iput-object p3, p0, Lcom/android/internal/policy/KeyInterceptionInfo;->windowTitle:Ljava/lang/String;

    .line 35
    iput p4, p0, Lcom/android/internal/policy/KeyInterceptionInfo;->windowOwnerUid:I

    .line 36
    return-void
.end method
