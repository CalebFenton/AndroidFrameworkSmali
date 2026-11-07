.class public abstract Landroid/service/autofill/InlineSuggestionRenderService;
.super Landroid/app/Service;
.source "InlineSuggestionRenderService.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/autofill/InlineSuggestionRenderService$InlineSuggestionUiImpl;,
        Landroid/service/autofill/InlineSuggestionRenderService$InlineSuggestionUiWrapper;
    }
.end annotation


# static fields
.field public static final whitelist SERVICE_INTERFACE:Ljava/lang/String; = "android.service.autofill.InlineSuggestionRenderService"

.field private static final blacklist TAG:Ljava/lang/String; = "InlineSuggestionRenderService"


# instance fields
.field private final blacklist mActiveInlineSuggestions:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Landroid/service/autofill/InlineSuggestionRenderService$InlineSuggestionUiImpl;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mCallback:Landroid/service/autofill/IInlineSuggestionUiCallback;

.field private final blacklist mMainHandler:Landroid/os/Handler;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmActiveInlineSuggestions(Landroid/service/autofill/InlineSuggestionRenderService;)Landroid/util/LruCache;
    .registers 1

    iget-object p0, p0, Landroid/service/autofill/InlineSuggestionRenderService;->mActiveInlineSuggestions:Landroid/util/LruCache;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMainHandler(Landroid/service/autofill/InlineSuggestionRenderService;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Landroid/service/autofill/InlineSuggestionRenderService;->mMainHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleDestroySuggestionViews(Landroid/service/autofill/InlineSuggestionRenderService;II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/service/autofill/InlineSuggestionRenderService;->handleDestroySuggestionViews(II)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleGetInlineSuggestionsRendererInfo(Landroid/service/autofill/InlineSuggestionRenderService;Landroid/os/RemoteCallback;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/service/autofill/InlineSuggestionRenderService;->handleGetInlineSuggestionsRendererInfo(Landroid/os/RemoteCallback;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleRenderSuggestion(Landroid/service/autofill/InlineSuggestionRenderService;Landroid/service/autofill/IInlineSuggestionUiCallback;Landroid/service/autofill/InlinePresentation;IILandroid/os/IBinder;III)V
    .registers 9

    invoke-direct/range {p0 .. p8}, Landroid/service/autofill/InlineSuggestionRenderService;->handleRenderSuggestion(Landroid/service/autofill/IInlineSuggestionUiCallback;Landroid/service/autofill/InlinePresentation;IILandroid/os/IBinder;III)V

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 5

    .line 54
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 68
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    iput-object v0, p0, Landroid/service/autofill/InlineSuggestionRenderService;->mMainHandler:Landroid/os/Handler;

    .line 78
    new-instance v0, Landroid/service/autofill/InlineSuggestionRenderService$1;

    const/16 v1, 0x1e

    invoke-direct {v0, p0, v1}, Landroid/service/autofill/InlineSuggestionRenderService$1;-><init>(Landroid/service/autofill/InlineSuggestionRenderService;I)V

    iput-object v0, p0, Landroid/service/autofill/InlineSuggestionRenderService;->mActiveInlineSuggestions:Landroid/util/LruCache;

    return-void
.end method

.method private blacklist handleDestroySuggestionViews(II)V
    .registers 8
    .param p1, "userId"    # I
    .param p2, "sessionId"    # I

    .line 224
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "handleDestroySuggestionViews called for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InlineSuggestionRenderService"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    iget-object v0, p0, Landroid/service/autofill/InlineSuggestionRenderService;->mActiveInlineSuggestions:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->snapshot()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_31
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_63

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/autofill/InlineSuggestionRenderService$InlineSuggestionUiImpl;

    .line 227
    .local v2, "inlineSuggestionUi":Landroid/service/autofill/InlineSuggestionRenderService$InlineSuggestionUiImpl;
    invoke-static {v2}, Landroid/service/autofill/InlineSuggestionRenderService$InlineSuggestionUiImpl;->-$$Nest$fgetmUserId(Landroid/service/autofill/InlineSuggestionRenderService$InlineSuggestionUiImpl;)I

    move-result v3

    if-ne v3, p1, :cond_62

    invoke-static {v2}, Landroid/service/autofill/InlineSuggestionRenderService$InlineSuggestionUiImpl;->-$$Nest$fgetmSessionId(Landroid/service/autofill/InlineSuggestionRenderService$InlineSuggestionUiImpl;)I

    move-result v3

    if-ne v3, p2, :cond_62

    .line 229
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Destroy "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    invoke-virtual {v2}, Landroid/service/autofill/InlineSuggestionRenderService$InlineSuggestionUiImpl;->releaseSurfaceControlViewHost()V

    .line 232
    .end local v2    # "inlineSuggestionUi":Landroid/service/autofill/InlineSuggestionRenderService$InlineSuggestionUiImpl;
    :cond_62
    goto :goto_31

    .line 233
    :cond_63
    return-void
.end method

.method private blacklist handleGetInlineSuggestionsRendererInfo(Landroid/os/RemoteCallback;)V
    .registers 3
    .param p1, "callback"    # Landroid/os/RemoteCallback;

    .line 219
    invoke-virtual {p0}, Landroid/service/autofill/InlineSuggestionRenderService;->onGetInlineSuggestionsRendererInfo()Landroid/os/Bundle;

    move-result-object v0

    .line 220
    .local v0, "rendererInfo":Landroid/os/Bundle;
    invoke-virtual {p1, v0}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    .line 221
    return-void
.end method

.method private blacklist handleRenderSuggestion(Landroid/service/autofill/IInlineSuggestionUiCallback;Landroid/service/autofill/InlinePresentation;IILandroid/os/IBinder;III)V
    .registers 31
    .param p1, "callback"    # Landroid/service/autofill/IInlineSuggestionUiCallback;
    .param p2, "presentation"    # Landroid/service/autofill/InlinePresentation;
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "hostInputToken"    # Landroid/os/IBinder;
    .param p6, "displayId"    # I
    .param p7, "userId"    # I
    .param p8, "sessionId"    # I

    .line 135
    move-object/from16 v1, p0

    move-object/from16 v7, p1

    move/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v8, p5

    const-string v9, "InlineSuggestionRenderService"

    if-nez v8, :cond_19

    .line 137
    :try_start_e
    invoke-interface {v7}, Landroid/service/autofill/IInlineSuggestionUiCallback;->onError()V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_11} :catch_12

    .line 140
    goto :goto_18

    .line 138
    :catch_12
    move-exception v0

    .line 139
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "RemoteException calling onError()"

    invoke-static {v9, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_18
    return-void

    .line 145
    :cond_19
    move/from16 v10, p6

    invoke-virtual {v1, v10}, Landroid/service/autofill/InlineSuggestionRenderService;->updateDisplay(I)V

    .line 147
    const/4 v11, 0x0

    move-object/from16 v12, p2

    :try_start_21
    invoke-virtual {v1, v12, v3, v4}, Landroid/service/autofill/InlineSuggestionRenderService;->onRenderSuggestion(Landroid/service/autofill/InlinePresentation;II)Landroid/view/View;

    move-result-object v2

    .line 148
    .local v2, "suggestionView":Landroid/view/View;
    if-nez v2, :cond_3a

    .line 149
    const-string v0, "ExtServices failed to render the inline suggestion view."

    invoke-static {v9, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2c
    .catchall {:try_start_21 .. :try_end_2c} :catchall_f6

    .line 151
    :try_start_2c
    invoke-interface {v7}, Landroid/service/autofill/IInlineSuggestionUiCallback;->onError()V
    :try_end_2f
    .catch Landroid/os/RemoteException; {:try_start_2c .. :try_end_2f} :catch_30
    .catchall {:try_start_2c .. :try_end_2f} :catchall_f6

    .line 154
    goto :goto_36

    .line 152
    :catch_30
    move-exception v0

    .line 153
    .restart local v0    # "e":Landroid/os/RemoteException;
    :try_start_31
    const-string v5, "Null suggestion view returned by renderer"

    invoke-static {v9, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_36
    .catchall {:try_start_31 .. :try_end_36} :catchall_f6

    .line 214
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_36
    invoke-virtual {v1, v11}, Landroid/service/autofill/InlineSuggestionRenderService;->updateDisplay(I)V

    .line 155
    return-void

    .line 157
    :cond_3a
    :try_start_3a
    iput-object v7, v1, Landroid/service/autofill/InlineSuggestionRenderService;->mCallback:Landroid/service/autofill/IInlineSuggestionUiCallback;

    .line 158
    nop

    .line 159
    invoke-virtual {v12}, Landroid/service/autofill/InlinePresentation;->getInlinePresentationSpec()Landroid/widget/inline/InlinePresentationSpec;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/inline/InlinePresentationSpec;->getMinSize()Landroid/util/Size;

    move-result-object v5

    .line 160
    invoke-virtual {v12}, Landroid/service/autofill/InlinePresentation;->getInlinePresentationSpec()Landroid/widget/inline/InlinePresentationSpec;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/inline/InlinePresentationSpec;->getMaxSize()Landroid/util/Size;

    move-result-object v6

    .line 158
    invoke-direct/range {v1 .. v6}, Landroid/service/autofill/InlineSuggestionRenderService;->measuredSize(Landroid/view/View;IILandroid/util/Size;Landroid/util/Size;)Landroid/util/Size;

    move-result-object v0
    :try_end_51
    .catchall {:try_start_3a .. :try_end_51} :catchall_f6

    move-object v14, v2

    move v6, v3

    move v13, v4

    .end local v2    # "suggestionView":Landroid/view/View;
    .local v14, "suggestionView":Landroid/view/View;
    move-object v15, v0

    .line 161
    .local v15, "measuredSize":Landroid/util/Size;
    :try_start_55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "width="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", height="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", measuredSize="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    new-instance v0, Landroid/service/autofill/InlineSuggestionRoot;

    invoke-direct {v0, v1, v7}, Landroid/service/autofill/InlineSuggestionRoot;-><init>(Landroid/content/Context;Landroid/service/autofill/IInlineSuggestionUiCallback;)V

    .line 164
    .local v0, "suggestionRoot":Landroid/service/autofill/InlineSuggestionRoot;
    invoke-virtual {v0, v14}, Landroid/service/autofill/InlineSuggestionRoot;->addView(Landroid/view/View;)V

    .line 165
    new-instance v16, Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v15}, Landroid/util/Size;->getWidth()I

    move-result v17

    .line 166
    invoke-virtual {v15}, Landroid/util/Size;->getHeight()I

    move-result v18

    const/16 v20, 0x0

    const/16 v21, -0x2

    const/16 v19, 0x2

    invoke-direct/range {v16 .. v21}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    move-object/from16 v2, v16

    .line 169
    .local v2, "lp":Landroid/view/WindowManager$LayoutParams;
    new-instance v3, Landroid/view/SurfaceControlViewHost;

    invoke-virtual {v1}, Landroid/service/autofill/InlineSuggestionRenderService;->getDisplay()Landroid/view/Display;

    move-result-object v4

    new-instance v5, Landroid/window/InputTransferToken;

    invoke-direct {v5, v8}, Landroid/window/InputTransferToken;-><init>(Landroid/os/IBinder;)V

    invoke-direct {v3, v1, v4, v5, v9}, Landroid/view/SurfaceControlViewHost;-><init>(Landroid/content/Context;Landroid/view/Display;Landroid/window/InputTransferToken;Ljava/lang/String;)V

    .line 171
    .local v3, "host":Landroid/view/SurfaceControlViewHost;
    invoke-virtual {v3, v0, v2}, Landroid/view/SurfaceControlViewHost;->setView(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V

    .line 175
    invoke-virtual {v14, v11}, Landroid/view/View;->setFocusable(Z)V

    .line 176
    new-instance v4, Landroid/service/autofill/InlineSuggestionRenderService$$ExternalSyntheticLambda0;

    invoke-direct {v4, v7}, Landroid/service/autofill/InlineSuggestionRenderService$$ExternalSyntheticLambda0;-><init>(Landroid/service/autofill/IInlineSuggestionUiCallback;)V

    invoke-virtual {v14, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 183
    nop

    .line 184
    invoke-virtual {v14}, Landroid/view/View;->getOnLongClickListener()Landroid/view/View$OnLongClickListener;

    move-result-object v4

    move-object v9, v4

    .line 185
    .local v9, "onLongClickListener":Landroid/view/View$OnLongClickListener;
    new-instance v4, Landroid/service/autofill/InlineSuggestionRenderService$$ExternalSyntheticLambda1;

    invoke-direct {v4, v9, v7}, Landroid/service/autofill/InlineSuggestionRenderService$$ExternalSyntheticLambda1;-><init>(Landroid/view/View$OnLongClickListener;Landroid/service/autofill/IInlineSuggestionUiCallback;)V

    invoke-virtual {v14, v4}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 196
    move-object v4, v0

    .end local v0    # "suggestionRoot":Landroid/service/autofill/InlineSuggestionRoot;
    .local v4, "suggestionRoot":Landroid/service/autofill/InlineSuggestionRoot;
    new-instance v0, Landroid/service/autofill/InlineSuggestionRenderService$InlineSuggestionUiImpl;

    move-object/from16 v16, v2

    move-object v2, v3

    .end local v3    # "host":Landroid/view/SurfaceControlViewHost;
    .local v2, "host":Landroid/view/SurfaceControlViewHost;
    .local v16, "lp":Landroid/view/WindowManager$LayoutParams;
    iget-object v3, v1, Landroid/service/autofill/InlineSuggestionRenderService;->mMainHandler:Landroid/os/Handler;

    move/from16 v5, p8

    move-object/from16 v17, v16

    move-object/from16 v16, v4

    move/from16 v4, p7

    .end local v4    # "suggestionRoot":Landroid/service/autofill/InlineSuggestionRoot;
    .local v16, "suggestionRoot":Landroid/service/autofill/InlineSuggestionRoot;
    .local v17, "lp":Landroid/view/WindowManager$LayoutParams;
    invoke-direct/range {v0 .. v5}, Landroid/service/autofill/InlineSuggestionRenderService$InlineSuggestionUiImpl;-><init>(Landroid/service/autofill/InlineSuggestionRenderService;Landroid/view/SurfaceControlViewHost;Landroid/os/Handler;II)V

    .line 198
    .local v0, "uiImpl":Landroid/service/autofill/InlineSuggestionRenderService$InlineSuggestionUiImpl;
    iget-object v3, v1, Landroid/service/autofill/InlineSuggestionRenderService;->mActiveInlineSuggestions:Landroid/util/LruCache;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    iget-object v3, v1, Landroid/service/autofill/InlineSuggestionRenderService;->mMainHandler:Landroid/os/Handler;

    new-instance v4, Landroid/service/autofill/InlineSuggestionRenderService$$ExternalSyntheticLambda2;

    invoke-direct {v4, v7, v0, v2, v15}, Landroid/service/autofill/InlineSuggestionRenderService$$ExternalSyntheticLambda2;-><init>(Landroid/service/autofill/IInlineSuggestionUiCallback;Landroid/service/autofill/InlineSuggestionRenderService$InlineSuggestionUiImpl;Landroid/view/SurfaceControlViewHost;Landroid/util/Size;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_ee
    .catchall {:try_start_55 .. :try_end_ee} :catchall_f4

    .line 214
    nop

    .end local v0    # "uiImpl":Landroid/service/autofill/InlineSuggestionRenderService$InlineSuggestionUiImpl;
    .end local v2    # "host":Landroid/view/SurfaceControlViewHost;
    .end local v9    # "onLongClickListener":Landroid/view/View$OnLongClickListener;
    .end local v14    # "suggestionView":Landroid/view/View;
    .end local v15    # "measuredSize":Landroid/util/Size;
    .end local v16    # "suggestionRoot":Landroid/service/autofill/InlineSuggestionRoot;
    .end local v17    # "lp":Landroid/view/WindowManager$LayoutParams;
    invoke-virtual {v1, v11}, Landroid/service/autofill/InlineSuggestionRenderService;->updateDisplay(I)V

    .line 215
    nop

    .line 216
    return-void

    .line 214
    :catchall_f4
    move-exception v0

    goto :goto_f9

    :catchall_f6
    move-exception v0

    move v6, v3

    move v13, v4

    :goto_f9
    invoke-virtual {v1, v11}, Landroid/service/autofill/InlineSuggestionRenderService;->updateDisplay(I)V

    .line 215
    throw v0
.end method

.method static synthetic blacklist lambda$handleRenderSuggestion$0(Landroid/service/autofill/IInlineSuggestionUiCallback;Landroid/view/View;)V
    .registers 5
    .param p0, "callback"    # Landroid/service/autofill/IInlineSuggestionUiCallback;
    .param p1, "v"    # Landroid/view/View;

    .line 178
    :try_start_0
    invoke-interface {p0}, Landroid/service/autofill/IInlineSuggestionUiCallback;->onClick()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_4

    .line 181
    goto :goto_c

    .line 179
    :catch_4
    move-exception v0

    .line 180
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "InlineSuggestionRenderService"

    const-string v2, "RemoteException calling onClick()"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_c
    return-void
.end method

.method static synthetic blacklist lambda$handleRenderSuggestion$1(Landroid/view/View$OnLongClickListener;Landroid/service/autofill/IInlineSuggestionUiCallback;Landroid/view/View;)Z
    .registers 6
    .param p0, "onLongClickListener"    # Landroid/view/View$OnLongClickListener;
    .param p1, "callback"    # Landroid/service/autofill/IInlineSuggestionUiCallback;
    .param p2, "v"    # Landroid/view/View;

    .line 186
    if-eqz p0, :cond_5

    .line 187
    invoke-interface {p0, p2}, Landroid/view/View$OnLongClickListener;->onLongClick(Landroid/view/View;)Z

    .line 190
    :cond_5
    :try_start_5
    invoke-interface {p1}, Landroid/service/autofill/IInlineSuggestionUiCallback;->onLongClick()V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_8} :catch_9

    .line 193
    goto :goto_11

    .line 191
    :catch_9
    move-exception v0

    .line 192
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "InlineSuggestionRenderService"

    const-string v2, "RemoteException calling onLongClick()"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_11
    const/4 v0, 0x1

    return v0
.end method

.method static synthetic blacklist lambda$handleRenderSuggestion$2(Landroid/service/autofill/IInlineSuggestionUiCallback;Landroid/service/autofill/InlineSuggestionRenderService$InlineSuggestionUiImpl;Landroid/view/SurfaceControlViewHost;Landroid/util/Size;)V
    .registers 8
    .param p0, "callback"    # Landroid/service/autofill/IInlineSuggestionUiCallback;
    .param p1, "uiImpl"    # Landroid/service/autofill/InlineSuggestionRenderService$InlineSuggestionUiImpl;
    .param p2, "host"    # Landroid/view/SurfaceControlViewHost;
    .param p3, "measuredSize"    # Landroid/util/Size;

    .line 206
    :try_start_0
    new-instance v0, Landroid/service/autofill/InlineSuggestionRenderService$InlineSuggestionUiWrapper;

    invoke-direct {v0, p1}, Landroid/service/autofill/InlineSuggestionRenderService$InlineSuggestionUiWrapper;-><init>(Landroid/service/autofill/InlineSuggestionRenderService$InlineSuggestionUiImpl;)V

    .line 207
    invoke-virtual {p2}, Landroid/view/SurfaceControlViewHost;->getSurfacePackage()Landroid/view/SurfaceControlViewHost$SurfacePackage;

    move-result-object v1

    .line 208
    invoke-virtual {p3}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-virtual {p3}, Landroid/util/Size;->getHeight()I

    move-result v3

    .line 206
    invoke-interface {p0, v0, v1, v2, v3}, Landroid/service/autofill/IInlineSuggestionUiCallback;->onContent(Landroid/service/autofill/IInlineSuggestionUi;Landroid/view/SurfaceControlViewHost$SurfacePackage;II)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_14} :catch_15

    .line 211
    goto :goto_1d

    .line 209
    :catch_15
    move-exception v0

    .line 210
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "InlineSuggestionRenderService"

    const-string v2, "RemoteException calling onContent()"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1d
    return-void
.end method

.method private blacklist measuredSize(Landroid/view/View;IILandroid/util/Size;Landroid/util/Size;)Landroid/util/Size;
    .registers 12
    .param p1, "view"    # Landroid/view/View;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "minSize"    # Landroid/util/Size;
    .param p5, "maxSize"    # Landroid/util/Size;

    .line 109
    const/4 v0, -0x2

    if-eq p2, v0, :cond_b

    if-eq p3, v0, :cond_b

    .line 111
    new-instance v0, Landroid/util/Size;

    invoke-direct {v0, p2, p3}, Landroid/util/Size;-><init>(II)V

    return-object v0

    .line 114
    :cond_b
    const/high16 v1, -0x80000000

    const/high16 v2, 0x40000000    # 2.0f

    if-ne p2, v0, :cond_1a

    .line 115
    invoke-virtual {p5}, Landroid/util/Size;->getWidth()I

    move-result v3

    invoke-static {v3, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .local v3, "widthMeasureSpec":I
    goto :goto_1e

    .line 118
    .end local v3    # "widthMeasureSpec":I
    :cond_1a
    invoke-static {p2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 121
    .restart local v3    # "widthMeasureSpec":I
    :goto_1e
    if-ne p3, v0, :cond_29

    .line 122
    invoke-virtual {p5}, Landroid/util/Size;->getHeight()I

    move-result v0

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .local v0, "heightMeasureSpec":I
    goto :goto_2d

    .line 125
    .end local v0    # "heightMeasureSpec":I
    :cond_29
    invoke-static {p3, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 127
    .restart local v0    # "heightMeasureSpec":I
    :goto_2d
    invoke-virtual {p1, v3, v0}, Landroid/view/View;->measure(II)V

    .line 128
    new-instance v1, Landroid/util/Size;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p4}, Landroid/util/Size;->getWidth()I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 129
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {p4}, Landroid/util/Size;->getHeight()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-direct {v1, v2, v4}, Landroid/util/Size;-><init>(II)V

    .line 128
    return-object v1
.end method


# virtual methods
.method protected final whitelist dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 8
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 328
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mActiveInlineSuggestions: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/service/autofill/InlineSuggestionRenderService;->mActiveInlineSuggestions:Landroid/util/LruCache;

    invoke-virtual {v1}, Landroid/util/LruCache;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 329
    iget-object v0, p0, Landroid/service/autofill/InlineSuggestionRenderService;->mActiveInlineSuggestions:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->snapshot()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_52

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/service/autofill/InlineSuggestionRenderService$InlineSuggestionUiImpl;

    .line 330
    .local v1, "impl":Landroid/service/autofill/InlineSuggestionRenderService$InlineSuggestionUiImpl;
    invoke-static {v1}, Landroid/service/autofill/InlineSuggestionRenderService$InlineSuggestionUiImpl;->-$$Nest$fgetmUserId(Landroid/service/autofill/InlineSuggestionRenderService$InlineSuggestionUiImpl;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1}, Landroid/service/autofill/InlineSuggestionRenderService$InlineSuggestionUiImpl;->-$$Nest$fgetmSessionId(Landroid/service/autofill/InlineSuggestionRenderService$InlineSuggestionUiImpl;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    const-string/jumbo v3, "ui: [%s] - [%d]  [%d]\n"

    invoke-virtual {p2, v3, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 331
    .end local v1    # "impl":Landroid/service/autofill/InlineSuggestionRenderService$InlineSuggestionUiImpl;
    goto :goto_2b

    .line 332
    :cond_52
    return-void
.end method

.method public final whitelist onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 4
    .param p1, "intent"    # Landroid/content/Intent;

    .line 337
    const/4 v0, 0x1

    invoke-static {v0}, Landroid/os/BaseBundle;->setShouldDefuse(Z)V

    .line 338
    const-string v0, "android.service.autofill.InlineSuggestionRenderService"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 339
    new-instance v0, Landroid/service/autofill/InlineSuggestionRenderService$2;

    invoke-direct {v0, p0}, Landroid/service/autofill/InlineSuggestionRenderService$2;-><init>(Landroid/service/autofill/InlineSuggestionRenderService;)V

    .line 363
    invoke-virtual {v0}, Landroid/service/autofill/InlineSuggestionRenderService$2;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 339
    return-object v0

    .line 366
    :cond_1a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Tried to bind to wrong intent (should be android.service.autofill.InlineSuggestionRenderService: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InlineSuggestionRenderService"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist onGetInlineSuggestionsRendererInfo()Landroid/os/Bundle;
    .registers 2

    .line 391
    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    return-object v0
.end method

.method public whitelist onRenderSuggestion(Landroid/service/autofill/InlinePresentation;II)Landroid/view/View;
    .registers 6
    .param p1, "presentation"    # Landroid/service/autofill/InlinePresentation;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .line 400
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "service implementation ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " does not implement onRenderSuggestion()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InlineSuggestionRenderService"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    const/4 v0, 0x0

    return-object v0
.end method

.method public final whitelist startIntentSender(Landroid/content/IntentSender;)V
    .registers 3
    .param p1, "intentSender"    # Landroid/content/IntentSender;

    .line 377
    iget-object v0, p0, Landroid/service/autofill/InlineSuggestionRenderService;->mCallback:Landroid/service/autofill/IInlineSuggestionUiCallback;

    if-nez v0, :cond_5

    return-void

    .line 379
    :cond_5
    :try_start_5
    iget-object v0, p0, Landroid/service/autofill/InlineSuggestionRenderService;->mCallback:Landroid/service/autofill/IInlineSuggestionUiCallback;

    invoke-interface {v0, p1}, Landroid/service/autofill/IInlineSuggestionUiCallback;->onStartIntentSender(Landroid/content/IntentSender;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_b

    .line 382
    goto :goto_f

    .line 380
    :catch_b
    move-exception v0

    .line 381
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 383
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_f
    return-void
.end method
