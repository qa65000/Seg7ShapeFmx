unit Seg7ShapeFmx;

interface

uses
    System.SysUtils,
    System.Classes, System.Types, System.Rtti, System.UITypes, System.UIConsts,
    FMX.Types, FMX.Controls, FMX.Objects;

type
    TSeg7Shape = class(TShape)

    private
        FSEG_A: Boolean;
        FSEG_B: Boolean;
        FSEG_C: Boolean;
        FSEG_D: Boolean;
        FSEG_E: Boolean;
        FSEG_F: Boolean;
        FSEG_G: Boolean;
        FNum: Byte;

        procedure SetSeg_a(const Value: Boolean);
        procedure SetSeg_b(const Value: Boolean);
        procedure SetSeg_c(const Value: Boolean);
        procedure SetSeg_d(const Value: Boolean);
        procedure SetSeg_e(const Value: Boolean);
        procedure SetSeg_f(const Value: Boolean);
        procedure SetSeg_g(const Value: Boolean);
        procedure SetNum(const Value: Byte);

        { Private 宣言 }

    protected
        { Protected 宣言 }
    public
        constructor Create(AOwner: TComponent); override;
        destructor Destroy; override;
        procedure Paint; override;

        { Public 宣言 }
    published
        { Published 宣言 }
        property Num: Byte read FNum write SetNum;
        property SEG_A: Boolean read FSEG_A write SetSeg_a;
        property SEG_B: Boolean read FSEG_B write SetSeg_b;
        property SEG_C: Boolean read FSEG_C write SetSeg_c;
        property SEG_D: Boolean read FSEG_D write SetSeg_d;
        property SEG_E: Boolean read FSEG_E write SetSeg_e;
        property SEG_F: Boolean read FSEG_F write SetSeg_f;
        property SEG_G: Boolean read FSEG_G write SetSeg_g;
        property Fill;
        property Stroke;

        property Align;
        property Anchors;
        property ClipChildren default False;
        property ClipParent default False;
        // property Cursor default crDefault;
        property DesignVisible default True;
        // property DragMode default TDragMode.dmManual;
        property EnableDragHighlight default True;
        property Enabled default True;
        property Locked default False;
        property Height;
        property HitTest default True;
        property Margins;
        property Opacity;
        property Padding;
        property PopupMenu;
        property Position;
        property RotationAngle;
        property RotationCenter;
        property Scale;
        property Visible default True;
        property Width;
        property OnApplyStyleLookup;
        property OnDragEnter;
        property OnDragLeave;
        property OnDragOver;
        property OnDragDrop;
        property OnDragEnd;
        property OnClick;
        property OnDblClick;
        property OnMouseDown;
        property OnMouseMove;
        property OnMouseUp;
        property OnMouseWheel;
        property OnMouseEnter;
        property OnMouseLeave;
        property OnPainting;
        property OnPaint;
        property OnResize;
    end;

procedure Register;

implementation

procedure Register;
begin
    RegisterComponents('SampleToos', [TSeg7Shape]);
end;

{ ﾒﾓﾘｰ構築時の処理 }
constructor TSeg7Shape.Create(AOwner: TComponent);
begin
    inherited;

    FNum := $FF;
    FSEG_A := True;
    FSEG_B := True;
    FSEG_C := True;
    FSEG_D := True;
    FSEG_E := True;
    FSEG_F := True;
    FSEG_G := True;
    FVisible := True;

    Height := 144;
    Width := 100;
end;

destructor TSeg7Shape.Destroy;
begin
    inherited;
end;

procedure TSeg7Shape.SetSeg_a(const Value: Boolean);
begin
    if (FSEG_A = Value) then
        exit;
    FSEG_A := Value;
    Repaint;
end;

procedure TSeg7Shape.SetSeg_b(const Value: Boolean);
begin
    if (FSEG_B = Value) then
        exit;
    FSEG_B := Value;
    Repaint;
end;

procedure TSeg7Shape.SetSeg_c(const Value: Boolean);
begin
    if (FSEG_C = Value) then
        exit;
    FSEG_C := Value;
    Repaint;
end;

procedure TSeg7Shape.SetSeg_d(const Value: Boolean);
begin
    if (FSEG_D = Value) then
        exit;
    FSEG_D := Value;
    Repaint;
end;

procedure TSeg7Shape.SetSeg_e(const Value: Boolean);
begin
    if (FSEG_E = Value) then
        exit;
    FSEG_E := Value;
    Repaint;
end;

procedure TSeg7Shape.SetSeg_f(const Value: Boolean);
begin
    if (FSEG_F = Value) then
        exit;
    FSEG_F := Value;
    Repaint;
end;

procedure TSeg7Shape.SetSeg_g(const Value: Boolean);
begin
    if (FSEG_G = Value) then
        exit;
    FSEG_G := Value;
    Repaint;
end;

procedure TSeg7Shape.SetNum(const Value: Byte);
begin
    if (FNum = Value) then
        exit;

    FNum := Value;
    case FNum of
        $0:
            begin
                FSEG_A := True;
                FSEG_B := True;
                FSEG_C := True;
                FSEG_D := True;
                FSEG_E := True;
                FSEG_F := True;
                FSEG_G := False;
            end;
        $1:
            begin
                FSEG_A := False;
                FSEG_B := True;
                FSEG_C := True;
                FSEG_D := False;
                FSEG_E := False;
                FSEG_F := False;
                FSEG_G := False;
            end;
        $2:
            begin
                FSEG_A := True;
                FSEG_B := True;
                FSEG_C := False;
                FSEG_D := True;
                FSEG_E := True;
                FSEG_F := False;
                FSEG_G := True;
            end;
        $3:
            begin
                FSEG_A := True;
                FSEG_B := True;
                FSEG_C := True;
                FSEG_D := True;
                FSEG_E := False;
                FSEG_F := False;
                FSEG_G := True;
            end;
        $4:
            begin
                FSEG_A := False;
                FSEG_B := True;
                FSEG_C := True;
                FSEG_D := False;
                FSEG_E := False;
                FSEG_F := True;
                FSEG_G := True;
            end;
        $5:
            begin
                FSEG_A := True;
                FSEG_B := False;
                FSEG_C := True;
                FSEG_D := True;
                FSEG_E := False;
                FSEG_F := True;
                FSEG_G := True;
            end;
        $6:
            begin
                FSEG_A := True;
                FSEG_B := False;
                FSEG_C := True;
                FSEG_D := True;
                FSEG_E := True;
                FSEG_F := True;
                FSEG_G := True;
            end;
        $7:
            begin
                FSEG_A := True;
                FSEG_B := True;
                FSEG_C := True;
                FSEG_D := False;
                FSEG_E := False;
                FSEG_F := False;
                FSEG_G := False;
            end;
        $8:
            begin
                FSEG_A := True;
                FSEG_B := True;
                FSEG_C := True;
                FSEG_D := True;
                FSEG_E := True;
                FSEG_F := True;
                FSEG_G := True;
            end;
        $9:
            begin
                FSEG_A := True;
                FSEG_B := True;
                FSEG_C := True;
                FSEG_D := True;
                FSEG_E := False;
                FSEG_F := True;
                FSEG_G := True;
            end;
        $A:
            begin
                FSEG_A := True;
                FSEG_B := True;
                FSEG_C := True;
                FSEG_D := False;
                FSEG_E := True;
                FSEG_F := True;
                FSEG_G := True;
            end;
        $B:
            begin
                FSEG_A := False;
                FSEG_B := False;
                FSEG_C := True;
                FSEG_D := True;
                FSEG_E := True;
                FSEG_F := True;
                FSEG_G := True;
            end;
        $C:
            begin
                FSEG_A := True;
                FSEG_B := False;
                FSEG_C := False;
                FSEG_D := True;
                FSEG_E := True;
                FSEG_F := True;
                FSEG_G := False;
            end;
        $D:
            begin
                FSEG_A := False;
                FSEG_B := True;
                FSEG_C := True;
                FSEG_D := True;
                FSEG_E := True;
                FSEG_F := False;
                FSEG_G := True;
            end;
        $E:
            begin
                FSEG_A := True;
                FSEG_B := False;
                FSEG_C := False;
                FSEG_D := True;
                FSEG_E := True;
                FSEG_F := True;
                FSEG_G := True;
            end;
        $F:
            begin
                FSEG_A := True;
                FSEG_B := False;
                FSEG_C := False;
                FSEG_D := False;
                FSEG_E := True;
                FSEG_F := True;
                FSEG_G := True;
            end;
    else
        begin
            { 10h以上時は表示させない。= 保持変更!
              FSEG_A := False;
              FSEG_B := False;
              FSEG_C := False;
              FSEG_D := False;
              FSEG_E := False;
              FSEG_F := False;
              FSEG_G := False;
            }
        end;
    end;
    Repaint;
end;

procedure TSeg7Shape.Paint;
var
    Polygon: TPolygon;
    cliw, clih: Single;
    h, w, aw, ah: Single;
    dw, dh: Single;
    gw, gh: Single;
begin
    if Visible = False then
        exit;
    cliw := Width - 1;
    clih := Height - 1;
    SEG_A := FSEG_A;
    SEG_B := FSEG_B;
    SEG_C := FSEG_C;
    SEG_D := FSEG_D;
    SEG_E := FSEG_E;
    SEG_F := FSEG_F;
    SEG_G := FSEG_G;

    /// / Base Point Calc //////////////////////////////////////////
    h := clih * 0.1;
    w := cliw * 0.8;

    ah := 1;
    aw := cliw * 0.1;

    gw := cliw * 0.1;
    gh := (clih - h) / 2.0;

    dw := cliw * 0.1;
    dh := clih - h;

    try
        /// /  色線設定　///////////////////////////////////////////////
        Canvas.Fill.Assign(Fill);
        Canvas.Stroke.Assign(Stroke);
        /// /////点設定 //////////////////////////////////////////////
        SetLength(Polygon, 7);
        /// ///////////// a の位置の書き込み ///////////////////////////
        if SEG_A = True then
        begin
            Polygon[0].X := aw;
            Polygon[0].Y := ah + h * 0.5;
            Polygon[1].X := aw + w * 0.2;
            Polygon[1].Y := ah;
            Polygon[2].X := aw + w * 0.8;
            Polygon[2].Y := ah;
            Polygon[3].X := aw + w;
            Polygon[3].Y := ah + h * 0.5;
            Polygon[4].X := aw + w * 0.8;
            Polygon[4].Y := ah + h;
            Polygon[5].X := aw + w * 0.2;
            Polygon[5].Y := ah + h;
            Polygon[6].X := aw;
            Polygon[6].Y := ah + h * 0.5;
            Canvas.FillPolygon(Polygon, AbsoluteOpacity);
            Canvas.DrawPolygon(Polygon, AbsoluteOpacity);
        end;
        /// ////////////// g 位置の書き込み /////////////////////////////
        if SEG_G = True then
        begin
            Polygon[0].X := gw;
            Polygon[0].Y := gh + h * 0.5;
            Polygon[1].X := gw + w * 0.2;
            Polygon[1].Y := gh;
            Polygon[2].X := gw + w * 0.8;
            Polygon[2].Y := gh;
            Polygon[3].X := gw + w;
            Polygon[3].Y := gh + h * 0.5;
            Polygon[4].X := gw + w * 0.8;
            Polygon[4].Y := gh + h;
            Polygon[5].X := gw + w * 0.2;
            Polygon[5].Y := gh + h;
            Polygon[6].X := gw;
            Polygon[6].Y := gh + h * 0.5;
            Canvas.FillPolygon(Polygon, AbsoluteOpacity);
            Canvas.DrawPolygon(Polygon, AbsoluteOpacity);
        end;
        /// ////////////// d 位置の書き込み /////////////////////////////
        if SEG_D = True then
        begin
            Polygon[0].X := dw;
            Polygon[0].Y := dh + h * 0.5;
            Polygon[1].X := dw + w * 0.2;
            Polygon[1].Y := dh;
            Polygon[2].X := dw + w * 0.8;
            Polygon[2].Y := dh;
            Polygon[3].X := dw + w;
            Polygon[3].Y := dh + h * 0.5;
            Polygon[4].X := dw + w * 0.8;
            Polygon[4].Y := dh + h;
            Polygon[5].X := dw + w * 0.2;
            Polygon[5].Y := dh + h;
            Polygon[6].X := dw;
            Polygon[6].Y := dh + h * 0.5;
            Canvas.FillPolygon(Polygon, AbsoluteOpacity);
            Canvas.DrawPolygon(Polygon, AbsoluteOpacity);
        end;

        SetLength(Polygon, 5);
        /// ////////////// b 位置の書き込み /////////////////////////////
        if SEG_B = True then
        begin
            Polygon[0].X := aw + w;
            Polygon[0].Y := ah + h * 0.5;
            Polygon[1].X := aw + w * 0.8;
            Polygon[1].Y := ah + h;
            Polygon[2].X := gw + w * 0.8;
            Polygon[2].Y := gh;
            Polygon[3].X := aw + w;
            Polygon[3].Y := gh + h * 0.5;
            Polygon[4].X := aw + w;
            Polygon[4].Y := ah + h * 0.5;
            Canvas.FillPolygon(Polygon, AbsoluteOpacity);
            Canvas.DrawPolygon(Polygon, AbsoluteOpacity);
        end;
        /// ////////////// c 位置の書き込み /////////////////////////////
        if SEG_C = True then
        begin
            Polygon[0].X := gw + w;
            Polygon[0].Y := gh + h * 0.5;
            Polygon[1].X := gw + w * 0.8;
            Polygon[1].Y := gh + h;
            Polygon[2].X := dw + w * 0.8;
            Polygon[2].Y := dh;
            Polygon[3].X := gw + w;
            Polygon[3].Y := dh + h * 0.5;
            Polygon[4].X := gw + w;
            Polygon[4].Y := gh + h * 0.5;
            Canvas.FillPolygon(Polygon, AbsoluteOpacity);
            Canvas.DrawPolygon(Polygon, AbsoluteOpacity);
        end;
        /// ////////////// f 位置の書き込み /////////////////////////////
        if SEG_F = True then
        begin
            Polygon[0].X := aw;
            Polygon[0].Y := ah + h * 0.5;
            Polygon[1].X := aw + w * 0.2;
            Polygon[1].Y := ah + h;
            Polygon[2].X := gw + w * 0.2;
            Polygon[2].Y := gh;
            Polygon[3].X := gw;
            Polygon[3].Y := gh + h * 0.5;
            Polygon[4].X := aw;
            Polygon[4].Y := ah + h * 0.5;
            Canvas.FillPolygon(Polygon, AbsoluteOpacity);
            Canvas.DrawPolygon(Polygon, AbsoluteOpacity);
        end;
        /// ////////////// e位置の書き込み /////////////////////////////
        if SEG_E = True then
        begin
            Polygon[0].X := gw;
            Polygon[0].Y := gh + h * 0.5;
            Polygon[1].X := gw + w * 0.2;
            Polygon[1].Y := gh + h;
            Polygon[2].X := dw + w * 0.2;
            Polygon[2].Y := dh;
            Polygon[3].X := dw;
            Polygon[3].Y := dh + h * 0.5;
            Polygon[4].X := gw;
            Polygon[4].Y := gh + h * 0.5;
            Canvas.FillPolygon(Polygon, AbsoluteOpacity);
            Canvas.DrawPolygon(Polygon, AbsoluteOpacity);
        end;
    finally
        inherited;
    end;
end;

end.
