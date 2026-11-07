.class public interface abstract Lcom/android/server/WidgetBackupProvider;
.super Ljava/lang/Object;
.source "WidgetBackupProvider.java"


# virtual methods
.method public abstract blacklist getWidgetParticipants(I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract blacklist getWidgetState(Ljava/lang/String;I)[B
.end method

.method public abstract blacklist restoreWidgetState(Ljava/lang/String;[BI)V
.end method

.method public abstract blacklist systemRestoreFinished(I)V
.end method

.method public abstract blacklist systemRestoreStarting(I)V
.end method
