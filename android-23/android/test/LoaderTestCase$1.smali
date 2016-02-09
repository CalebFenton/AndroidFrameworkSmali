.class final Landroid/test/LoaderTestCase$1;
.super Landroid/os/AsyncTask;
.source "LoaderTestCase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/test/LoaderTestCase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 40
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "args"    # [Ljava/lang/Object;

    #@0
    .prologue
    .line 42
    check-cast p1, [Ljava/lang/Void;

    #@2
    .end local p1    # "args":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/test/LoaderTestCase$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1
    .param p1, "args"    # [Ljava/lang/Void;

    #@0
    .prologue
    .line 42
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "result"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 44
    check-cast p1, Ljava/lang/Void;

    #@2
    .end local p1    # "result":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/test/LoaderTestCase$1;->onPostExecute(Ljava/lang/Void;)V

    #@5
    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 0
    .param p1, "result"    # Ljava/lang/Void;

    #@0
    .prologue
    .line 44
    return-void
.end method
