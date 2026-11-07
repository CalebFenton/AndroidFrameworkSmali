.class public Lcom/android/internal/widget/remotecompose/core/documentation/StringPair;
.super Ljava/lang/Object;
.source "StringPair.java"


# instance fields
.field final blacklist mName:Ljava/lang/String;

.field final blacklist mValue:Ljava/lang/String;


# direct methods
.method constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/core/documentation/StringPair;->mName:Ljava/lang/String;

    .line 26
    iput-object p2, p0, Lcom/android/internal/widget/remotecompose/core/documentation/StringPair;->mValue:Ljava/lang/String;

    .line 27
    return-void
.end method


# virtual methods
.method public blacklist getName()Ljava/lang/String;
    .registers 2

    .line 30
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/documentation/StringPair;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getValue()Ljava/lang/String;
    .registers 2

    .line 34
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/documentation/StringPair;->mValue:Ljava/lang/String;

    return-object v0
.end method
